﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using System.IO;

namespace UpgradeLibrary.Upgrade
{
    public class ConvertDatabase921 : ConvertSqlDatabase
    {
        /// <summary>
        /// Constructor.
        /// </summary>
        public ConvertDatabase921(string path) : base(path)
        {
            myVersion = new Version("9.2.1");
        }


        /// <summary>
        /// Runs the database update script to take 9.0.1 to 9.0.2.
        /// </summary>
        /// <param name="conn"></param>
        public override void Execute(SqlConnection conn)
        {
            try
            {
                // apply update scripts
                RunFile(Path.Combine(this.applicationPath, @"VersionUpgrader\SQL\920_to_921.sql"), conn);
                RunFile(Path.Combine(this.applicationPath, @"VersionUpgrader\SQL\920_to_921_data.sql"), conn);
                this.UpgradeToVersionLocalDB(conn, myVersion);
            }
            catch (Exception ex)
            {
                log.Fatal("Error in upgrading assessment version 9.2.0 file to 9.2.1", ex);
                throw new DatabaseUpgradeException("Error in upgrading assessment version 9.2.0 file to 9.2.1");
            }
        }
    }
}
