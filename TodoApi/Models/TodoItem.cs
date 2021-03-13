using System.ComponentModel.DataAnnotations.Schema;

namespace TodoApi.Models
{
    [Table("todo_items")]
    public class TodoItem
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public bool IsComplete { get; set; }
        public string Secret { get; set; }
    }
}