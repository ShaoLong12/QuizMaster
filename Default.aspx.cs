using System;
using System.Data;
using System.Web.UI;

namespace WAPP_ASSIGNEMNT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
                LoadStatistics();
            }
        }

        private void LoadCategories()
        {
            // Categories are now static in Default.aspx
            // No dynamic loading needed
        }

        private void LoadStatistics()
        {
            try
            {
                // Get total quizzes
                string queryQuizzes = "SELECT COUNT(*) FROM Quizzes WHERE IsActive = 1";
                object resultQuizzes = DBHelper.ExecuteScalar(queryQuizzes);
                lblTotalQuizzes.Text = resultQuizzes != null ? resultQuizzes.ToString() : "0";

                // Get total users
                string queryUsers = "SELECT COUNT(*) FROM Users WHERE IsActive = 1";
                object resultUsers = DBHelper.ExecuteScalar(queryUsers);
                lblTotalUsers.Text = resultUsers != null ? resultUsers.ToString() : "0";

                // Get total quiz attempts
                string queryAttempts = "SELECT COUNT(*) FROM QuizAttempts";
                object resultAttempts = DBHelper.ExecuteScalar(queryAttempts);
                lblTotalAttempts.Text = resultAttempts != null ? resultAttempts.ToString() : "0";
            }
            catch (Exception ex)
            {
                // Log error or handle gracefully
                System.Diagnostics.Debug.WriteLine("Error loading statistics: " + ex.Message);
                lblTotalQuizzes.Text = "0";
                lblTotalUsers.Text = "0";
                lblTotalAttempts.Text = "0";
            }
        }
    }
}