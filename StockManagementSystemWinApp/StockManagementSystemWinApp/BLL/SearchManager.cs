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
    class SearchManager
    {
        SearchRepository _searchRepository = new SearchRepository();
        public List<string> LoadCompany()
        {
            return _searchRepository.LoadCompany();
        }

        public List<string> LoadCategory()
        {
            return _searchRepository.LoadCategory();
        }

        public DataTable DisplayGrid(Company company, Category category)
        {
            return _searchRepository.DisplayGrid(company, category);
        }

        public DataTable DisplayCompanyGrid(Company company)
        {
            return _searchRepository.DisplayCompanyGrid(company);
        }

        public DataTable DisplayCategoryGrid(Category category)
        {
            return _searchRepository.DisplayCategoryGrid(category);
        }
    }
}
