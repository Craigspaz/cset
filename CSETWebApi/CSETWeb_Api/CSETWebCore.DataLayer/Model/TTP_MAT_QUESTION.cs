﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    [Index("TTP_Code", "Mat_Question_Id", Name = "IX_TTP_MAT_QUESTION", IsUnique = true)]
    public partial class TTP_MAT_QUESTION
    {
        [Key]
        [StringLength(100)]
        public string TTP_Code { get; set; }
        [Key]
        public int Mat_Question_Id { get; set; }

        [ForeignKey("Mat_Question_Id")]
        [InverseProperty("TTP_MAT_QUESTION")]
        public virtual MATURITY_QUESTIONS Mat_Question { get; set; }
        [ForeignKey("TTP_Code")]
        [InverseProperty("TTP_MAT_QUESTION")]
        public virtual TTP TTP_CodeNavigation { get; set; }
    }
}