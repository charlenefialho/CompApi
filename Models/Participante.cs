using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;

namespace CompAPI.Models
{
    [Table("TB_PARTICIPANTE")]
    public class Participante
    {
        [Key]
        public int Id {get; set;}
        public int TipoId {get; set;}
        public string Nome {get; set;}
        public string Cpf {get; set;}
        public string Email {get; set;}
    }
}