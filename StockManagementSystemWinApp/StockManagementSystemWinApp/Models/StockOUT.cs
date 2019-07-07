using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StockManagementSystemWinApp.Models
{
    class StockOUT
    {
        public int ID { get; set; }
        public DateTime DT { get; set; }
        public string StockCondition { get; set; }
        public int ItemID { get; set; }
        public int Amount { get; set; }
    }
}
