using System.ComponentModel.DataAnnotations;

namespace ExpenseTracker.API.DTO;

public class CreateExpenseDto
{
    [Required]
    public string Description { get; set; } = String.Empty;

    [Required]
    [Range(0.01, double.MaxValue, ErrorMessage = "Amount must be greater than zero.")]
    public decimal Amount { get; set; }

    [Required]
    public string Category { get; set; } = String.Empty;
}