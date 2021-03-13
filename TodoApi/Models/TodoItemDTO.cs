using System.ComponentModel.DataAnnotations.Schema;

namespace TodoApi.Models
{
    [Table("todo_items", Schema = "todoapi")]
    public class TodoItemDTO
    {
        [Column("item_id")]
        public long Id { get; set; }
        [Column("item_name")]
        public string Name { get; set; }
        [Column("is_complete")]
        public bool IsComplete { get; set; }
    }
}