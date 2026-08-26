namespace ExpenseTracker.API.Models
{
    public class Expense
    {
        public int Id { get; set; }
        public string Description { get; set; } = String.Empty;
        public decimal Amount { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public string Category { get; set; } = String.Empty;
    }
}