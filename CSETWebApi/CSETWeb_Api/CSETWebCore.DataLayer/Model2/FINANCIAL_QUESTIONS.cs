﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model2
{
    /// <summary>
    /// A collection of FINANCIAL_QUESTIONS records
    /// </summary>
    public partial class FINANCIAL_QUESTIONS
    {
        [Key]
        public int StmtNumber { get; set; }
        [Key]
        public int Question_Id { get; set; }
        public int? Maturity_Question_Id { get; set; }

        [ForeignKey(nameof(Question_Id))]
        [InverseProperty(nameof(NEW_QUESTION.FINANCIAL_QUESTIONS))]
        public virtual NEW_QUESTION Question { get; set; }
        [ForeignKey(nameof(StmtNumber))]
        [InverseProperty(nameof(FINANCIAL_DETAILS.FINANCIAL_QUESTIONS))]
        public virtual FINANCIAL_DETAILS StmtNumberNavigation { get; set; }
    }
}