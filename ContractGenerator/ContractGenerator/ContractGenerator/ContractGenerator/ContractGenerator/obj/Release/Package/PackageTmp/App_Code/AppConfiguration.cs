﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace ContractGenerator.App_Code
{
    public class AppConfiguration
    {
        public static string FromAddress
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("FromAddress");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("AppSetting FromAddress not found in web.config file");
            }
        }

        public static string ToAddress
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("ToAddress");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("AppSetting ToAddress not found in web.config file");
            }
        }

        public static string ToName
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("ToName");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("AppSettingToName not found in web.config file");
            }
        }

        public static string FromName
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("FromName");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("AppSetting FromName not found in web.config file");
            }
        }
    }
}