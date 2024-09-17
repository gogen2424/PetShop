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
                    UnitTextBox.Text = _currentProduct.Units.NameOfUnit;
                    NameTextBox.Text = _currentProduct.ProductName.Name;
                    CostTextBox.Text = _currentProduct.ProductCost.ToString();
                    SupplierTextBox.Text = _currentProduct.Supplier.Name;
                    DescriptionTextBox.Text = _currentProduct.ProductDesription;



                }
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
