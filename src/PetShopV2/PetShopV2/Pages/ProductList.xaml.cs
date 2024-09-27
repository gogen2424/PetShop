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
    /// Логика взаимодействия для ProductList.xaml
    /// </summary>
    public partial class ProductList : Page
    {
        public ProductList()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
            try
            {
                ProductListView.ItemsSource = Data.Stepanyan_GeorgyEntities.GetContext().Product.ToList();
                var manufactlist = Data.Stepanyan_GeorgyEntities.GetContext().Manufacture.ToList();
                manufactlist.Insert(0, new Data.Manufacture { Name = "Все производители" });
                ManufacturerComboBox.ItemsSource = manufactlist;
                ManufacturerComboBox.SelectedIndex = 0;

                if (Classes.Manager.CurrentUser != null)
                {
                    FIOLabel.Visibility = Visibility.Visible;
                    FIOLabel.Content = $"{Classes.Manager.CurrentUser.UserSurname} " +
                        $"{Classes.Manager.CurrentUser.UserName} " +
                        $"{Classes.Manager.CurrentUser.UserPatronymic}";
                }
                else
                {
                    FIOLabel.Visibility = Visibility.Hidden;
                }
                CountOfLabel.Content = $"{Data.Stepanyan_GeorgyEntities.GetContext().Product.Count()}/" +
                    $"{Data.Stepanyan_GeorgyEntities.GetContext().Product.Count()}";
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString(), "ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        public List<Data.Product> _currentProduct = Data.Stepanyan_GeorgyEntities.GetContext().Product.ToList();
        public void Update()
        {
            try
            {
                _currentProduct = Data.Stepanyan_GeorgyEntities.GetContext().Product.ToList();

                _currentProduct = (from item in Data.Stepanyan_GeorgyEntities.GetContext().Product
                                   where item.ProductName.Name.ToLower().Contains(SearchTextBox.Text) ||
                                   item.ProductDesription.ToLower().Contains(SearchTextBox.Text) ||
                                   item.Manufacture.Name.ToLower().Contains(SearchTextBox.Text) ||
                                   item.ProductCost.ToString().ToLower().Contains(SearchTextBox.Text) ||
                                   item.ProductQuantityInStock.ToString().ToLower().Contains(SearchTextBox.Text)
                                   select item).ToList();



                if (SortUpRadioButton.IsChecked == true)
                {
                    _currentProduct = _currentProduct.OrderBy(d => d.ProductCost).ToList();
                }

                if (SortDownRadioButton.IsChecked == true)
                {
                    _currentProduct = _currentProduct.OrderByDescending(d => d.ProductCost).ToList();
                }

                var selected = ManufacturerComboBox.SelectedItem as Data.Manufacture;
                if (selected != null && selected.Name != "Все производители")
                {
                    _currentProduct = _currentProduct.Where(d => d.IdManufacture == selected.Id).ToList();
                }

                CountOfLabel.Content = $"{_currentProduct.Count}/{Data.Stepanyan_GeorgyEntities.GetContext().Product.Count()}";

                ProductListView.ItemsSource = _currentProduct;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void SortUpRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.Manager.MainFrame.CanGoBack)
            {
                if (Classes.Manager.CurrentUser != null)
                {
                    Classes.Manager.CurrentUser = null;
                }

                Classes.Manager.MainFrame.GoBack();
            }
        }
        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddeditProductPage(null));
        }
    }
}
