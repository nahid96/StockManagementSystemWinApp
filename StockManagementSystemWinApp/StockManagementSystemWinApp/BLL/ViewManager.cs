using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using StockManagementSystemWinApp.Models;
using StockManagementSystemWinApp.Repository;

namespace StockManagementSystemWinApp.BLL
{
    class ViewManager
    {
        ViewRepository _viewRepository = new ViewRepository();
        public DataTable ShowItems(string fromDate, string toDate, StockOUT stockOUT)
        {
           return _viewRepository.ShowItems(fromDate, toDate, stockOUT);
        }

        public int DateDifference(string fromDate, string toDate)
        {
            return _viewRepository.DateDifference(fromDate, toDate);
        }
    }
}
