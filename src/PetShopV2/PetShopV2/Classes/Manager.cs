﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace PetShopV2.Classes
{
    public static class Manager
    {
       public static Frame MainFrame { get; set; }

        public static Data.User CurrentUser { get; set; }

        public static void GetImageData()
        {
            try
            {
                var list = Data.Stepanyan_GeorgyEntities.GetContext().Product.ToList();
                foreach (var item in list)
                {
                    string path = Directory.GetCurrentDirectory() + @"\img\" + item.ProductName;
                    if (File.Exists(path))
                    {
                        item.ProductPhoto = File.ReadAllBytes(path);
                    }
                }
                
            }
            catch (Exception ex)
            {
               
            }
        }
    }
}
