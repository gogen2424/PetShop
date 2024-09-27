using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShopV2.Pages
{

    /// <summary>
    /// Логика взаимодействия для AddeditProductPage.xaml
    /// </summary>
    public partial class AddeditProductPage : Page
    {
        public string FlagAddOrEdit = "default";
        public Data.Product _currentProduct = new Data.Product();



        public AddeditProductPage(Data.Product product)
        {
            InitializeComponent();
            if (product != null)
            {
                _currentProduct = product;
                FlagAddOrEdit = "elit";

            }
            else
            {
                FlagAddOrEdit = "Add";

            }

            DataContext = _currentProduct;

            Init();
        }

        public void Init()
        {
            try
            {
                CategoryComboBox.ItemsSource = Data.Stepanyan_GeorgyEntities.GetContext().Category.ToList();
                
                if(FlagAddOrEdit == "add")
                {
                    IdTextBox.Visibility = Visibility.Hidden;
                    IdLabel.Visibility = Visibility.Hidden;

                    CategoryComboBox.SelectedItem = null;
                    CountTextBox.Text = string.Empty;
                    UnitTextBox.Text = string.Empty;
                    NameTextBox.Text = string.Empty;
                    CostTextBox.Text = string.Empty;
                    SupplierTextBox.Text = string.Empty;
                    DescriptionTextBox.Text = string.Empty;
                   
                }
                else if (FlagAddOrEdit == "edit")
                {

                    IdTextBox.Visibility = Visibility.Visible;
                    IdLabel.Visibility = Visibility.Visible;


                    CategoryComboBox.SelectedItem = null;
                    CountTextBox.Text = _currentProduct.ProductQuantityInStock.ToString();
                    UnitTextBox.Text = _currentProduct.Units.NameOfUnits;
                    NameTextBox.Text = _currentProduct.ProductName.Name;
                    CostTextBox.Text = _currentProduct.ProductCost.ToString();
                    SupplierTextBox.Text = _currentProduct.Supplier.Name;
                    DescriptionTextBox.Text = _currentProduct.ProductDesription;

                    IdTextBox.Text = Data.Stepanyan_GeorgyEntities.GetContext().Product.Max(d => d.Id + 1).ToString();
                    CategoryComboBox.SelectedItem = Data.Stepanyan_GeorgyEntities.GetContext().Category.Where(d => d.Id == _currentProduct.IdCategory).FirstOrDefault();


                }
            }
            catch (Exception)
            {

            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ProductList());
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();
                if(string.IsNullOrEmpty(NameTextBox.Text))
                {
                    errors.AppendLine("Заполните наименование");

                }
                if (CategoryComboBox.SelectedItem == null)
                {
                    errors.AppendLine("Выберите категорию:");

                }
                if (string.IsNullOrEmpty(CountTextBox.Text))
                {
                    errors.AppendLine("Заполните колличество");
                }
                else
                {
                    var tryCount = Int32.TryParse(CountTextBox.Text, out var resultQuantity);
                    if (!tryCount)
                    {
                        errors.AppendLine("Колличесвто - целое число");
                    }
                }
                if (string.IsNullOrEmpty(UnitTextBox.Text))
                {
                    errors.AppendLine("Заполните ед. измерения");
                }
                if (string.IsNullOrEmpty(SupplierTextBox.Text))
                {
                    errors.AppendLine("Заполните поставщика");
                }
                if (string.IsNullOrEmpty(CostTextBox.Text))
                {
                    errors.AppendLine("Заполните стоимость");
                }
                else
                {
                    var tryCost = Decimal.TryParse(CostTextBox.Text, out var resultCost);
                    if(!tryCost)
                    {
                        errors.AppendLine("Стоимость -дробное число");

                    }
                    else
                    {

                    }
                    if (tryCost && resultCost < 0)
                    {
                        errors.AppendLine("Стоимость не может быть отрицательной");

                    }
                }
                if (string.IsNullOrEmpty(DescriptionTextBox.Text))
                {
                    errors.AppendLine("Заполните описание");
                }

                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                var selectedCategory = CategoryComboBox.SelectedItem as Data.Category;

                _currentProduct.IdCategory = Data.Stepanyan_GeorgyEntities.GetContext().Category.Where(d => d.Id == selectedCategory.Id).FirstOrDefault().Id;
                _currentProduct.ProductQuantityInStock = Convert.ToInt32(CountTextBox.Text);
                _currentProduct.ProductCost = Convert.ToDecimal(UnitTextBox.Text);
                _currentProduct.ProductDesription = DescriptionTextBox.Text;

                var searchUnit = (from item in Data.Stepanyan_GeorgyEntities.GetContext().Units
                                  where item.NameOfUnits == UnitTextBox.Text
                                  select item).FirstOrDefault();
                if (searchUnit != null)
                {
                    Data.Units units = new Data.Units()
                    {
                        NameOfUnits = UnitTextBox.Text
                    };
                    Data.Stepanyan_GeorgyEntities.GetContext().Units.Add(units);
                    Data.Stepanyan_GeorgyEntities.GetContext().SaveChanges();
                    _currentProduct.IdUnits = units.IdUnit;
                }

                // наим.
                // поставшик

                if (FlagAddOrEdit == "add")
                {
                    Data.Stepanyan_GeorgyEntities.GetContext().Product.Add(_currentProduct);
                    Data.Stepanyan_GeorgyEntities.GetContext().SaveChanges();
                    MessageBox.Show("Успешно сохранено", "Успех", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else if (FlagAddOrEdit == "edit")
                {
                    Data.Stepanyan_GeorgyEntities.GetContext().SaveChanges();
                    MessageBox.Show("Успешно сохранено", "Успех", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }
            catch (Exception errors)
            {
                MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
