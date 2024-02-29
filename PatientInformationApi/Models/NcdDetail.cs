using System;
using System.Collections.Generic;

#nullable disable

namespace PatientInformationApi.Models
{
    public partial class NcdDetail
    {
        public int Id { get; set; }
        public int? PatientId { get; set; }
        public int? NcdId { get; set; }

        public virtual Ncd Ncd { get; set; }
        public virtual Patient Patient { get; set; }
    }
}
