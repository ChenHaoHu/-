﻿using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
using 管道能耗.CardPages.dataoprate;

namespace 管道能耗.CardPages
{
    /// <summary>
    /// SoilAmbientTemp.xaml 的交互逻辑
    /// </summary>
    public partial class SoilAmbientTemp : Page
    {
        DataTable data;

        public SoilAmbientTemp()
        {
            InitializeComponent();
            initTable();
        }

        public void initTable()
        {
            table.SelectedIndex = 0;
            table.IsReadOnly = true;
            table.ItemsSource = null;
            data = new SoilDAL().getSoilData();
            table.ItemsSource = data.DefaultView;
            initTools();
            table.SelectedIndex = -1;
            this.SelectRow.Text = "0";

            if (data.Rows.Count == 0)
            {
                SelectRow.Text = "0 ";
            }
        }

        //初始化tool
        public void initTools()
        {
            total.Text = "/" + data.Rows.Count;
        }

        public void button_add(object sender, RoutedEventArgs e)
        {
            Soil_Add soil_Add = new Soil_Add();
            soil_Add.ShowDialog();
            initTable();
        }
        public void button_edit(object sender, RoutedEventArgs e)
        {

            if (table.SelectedIndex >= 0)
            {
                Soil_Edit soil_Edit = new Soil_Edit(int.Parse(data.Rows[table.SelectedIndex]["soil_id"] + " "));
                soil_Edit.ShowDialog();
                initTable();
            }
            else
            {
                MessageBox.Show("没有选中项,无法编辑");
            }
        }
        public void button_dele(object sender, RoutedEventArgs e)
        {
            if (table.SelectedIndex >= 0)
            {
                int id = int.Parse(data.Rows[table.SelectedIndex]["soil_id"] + " ");
                SoilDAL dal = new SoilDAL();
                dal.delSoilData(id);
                initTable();
            }
            else
            {
                MessageBox.Show("没有选中项,无法删除");
            }
        }
        public void start(object sender, RoutedEventArgs e)
        {
            table.SelectedIndex = 0;
            this.SelectRow.Text = " " + (table.SelectedIndex + 1);
        }
        public void end(object sender, RoutedEventArgs e)
        {
            table.SelectedIndex = data.Rows.Count - 1;
            this.SelectRow.Text = " " + (table.SelectedIndex + 1);
        }
        public void up(object sender, RoutedEventArgs e)
        {

            if (table.SelectedIndex > 0)
            {
                table.SelectedIndex--;
                this.SelectRow.Text = " " + (table.SelectedIndex + 1);
                this.SelectRow.Text = " " + (table.SelectedIndex + 1);
            }


        }
        public void down(object sender, RoutedEventArgs e)
        {
            if (table.SelectedIndex < data.Rows.Count - 1)
            {
                table.SelectedIndex++;
                this.SelectRow.Text = " " + (table.SelectedIndex + 1);
                this.SelectRow.Text = " " + (table.SelectedIndex + 1);
            }

        }

        private void SelectRow_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {

                if (IsOnlyNumber(SelectRow.Text))
                {
                    int select = int.Parse(SelectRow.Text);
                    if (select <= data.Rows.Count)
                    {
                        table.SelectedIndex = select - 1;
                    }
                    else
                    {
                        MessageBox.Show("没有该行");
                    }
                }
                else
                {
                    MessageBox.Show("输入字符无效");
                    this.SelectRow.Text = " " + (table.SelectedIndex + 1);
                }

            }
        }

        private static bool IsOnlyNumber(string value)
        {
            Regex r1 = new Regex(@"^[0-9]+$");
            Regex r2 = new Regex(@"^\s[0-9]+$");

            if (!r1.Match(value).Success)
            {
                return r2.Match(value).Success;
            }

            return r1.Match(value).Success;
        }


        public void button_export(object sender, RoutedEventArgs e)
        {
            string path = string.Empty;
            var openFileDialog = new Microsoft.Win32.OpenFileDialog()
            {
                Filter = "Files (*.xlsx*)|*.xls*"//如果需要筛选txt文件（"Files (*.txt)|*.txt"）
            };
            var result = openFileDialog.ShowDialog();
            if (result == true)
            {
                path = openFileDialog.FileName;
            }
            if (path.Length > 0)
            {
                SoilDAL dAL = new SoilDAL();
                Console.WriteLine(path);
                exportExcel exp = new exportExcel();
                exp.export(dAL.getSoilData(), path, "Soil");
                MessageBox.Show("导出完成");
            }
        }

    }
}