using System;
using System.ComponentModel;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;


namespace First_VisualWebPart.VisualWebPart1
{
    [ToolboxItemAttribute(false)]
    public partial class VisualWebPart1 : WebPart
    {
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling usingC:\HEC Project\working Projects\WebPart\sandbox-19-01-2015\first-visualwebpart (2)\First-VisualWebPart\First-VisualWebPart\Style Library\HEC\
        // the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public VisualWebPart1()
        {

        }



        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                

                Refreshpage();
               
            }
        }

        protected void Refreshpage()
        {
            //btnsignUp.Visible = false;
            mvHomeScreen.ActiveViewIndex = 0;
            hdnActiveView.Value = "logIn";
            btnlogin.Visible = true;
            lblSignUpMessage.Text = "";
            lblSignUpMessage2.Text = "";
            lblSignUpMessage3.Text = "";
            //LoginPanel.Visible = true;
            loginmessage.Visible = false;
            divConfirmation.Visible = false;
            imgLogo.ImageUrl =
                Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Site.RootWeb.Url,
                    "/Style Library/HEC/NewBannerBlackHec1.jpg");
            //imgLock.ImageUrl =
            //    Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Site.RootWeb.Url,
            //        "/Style Library/HEC/lock.png");
            //imgLogin.ImageUrl =
            //    Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Site.RootWeb.Url,
            //        "/Style Library/HEC/login_clock.png");
        }


        protected void btnlogin_Click(object sender, EventArgs e)
        {
            FName.Text = "";
            LName.Text = "";
            cnic.Text = "";
            passport.Text = "";
            phone.Text = "";
            address.Text = "";
            ddlOccupation.SelectedIndex = -1;
            ddlprimaryAffiliation.SelectedIndex = -1;
            lblMessage.Text = "";
            lstInterest.SelectedIndex = -1;
            ddlRegion.SelectedIndex = -1;
            lstAffiliation.SelectedIndex = -1;
            ddlCountry.SelectedIndex = ddlCountry.Items.IndexOf(ddlCountry.Items.FindByText("Pakistan"));


            string match = "";
            string EmailAddress = Email.Text.Trim().ToLower();

            if (EmailAddress != "")
            {

                if (EmailAddress.IndexOf('@') != -1)
                {

                    try
                    {
                        SPWeb app = SPContext.Current.Web;
                        SPList Users = app.Lists["EMSUsers"];

                        SPListItemCollection itemCollection = Users.Items;

                        foreach (SPListItem item in itemCollection)
                        {

                            string email = Convert.ToString(item["Title"]);
                            string status = Convert.ToString(item["ApplicationStatus"]);



                            if ((email == Email.Text.Trim().ToLower()) && (status == "Added"))
                            {
                                match = "Added";
                            }
                            if ((email == Email.Text.Trim().ToLower()) && (status == "New"))
                            {
                                match = "New";
                            }
                            if ((email == Email.Text.Trim().ToLower()) && (status == "Approved"))
                            {
                                match = "Approved";
                            }
                        }

                        if (match == "Added")
                        {
                            lblMessage.Text = "Redirecting to EMS....";
                            lblMessage.ForeColor = System.Drawing.Color.Green;

                            SPWeb spweb = SPContext.Current.Web;
                            loginmessage.Visible = true;
                            HttpContext currentContext = HttpContext.Current;


                        //    //stpxell
                        //    loginmessage.Text = "<a id=\"lnkRedirect\" href=" + Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(spweb.ServerRelativeUrl.TrimEnd('/'),
                        //"/_layouts/15/authenticate.aspx?Source=/_layouts/15/appredirect.aspx?instance_id={D875F667-91EC-4A92-9C17-69A34B4E51EB}") + "></a>";



                        //    ////           //xellems
                        //    loginmessage.Text = "<a id=\"lnkRedirect\" href=" + Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(spweb.ServerRelativeUrl.TrimEnd('/'),
                        //"/_layouts/15/authenticate.aspx?Source=/_layouts/15/appredirect.aspx?instance_id={749B8BCB-B9B7-400C-B736-DC0D5A015F08}") + "></a>";

                            ////           //pern
                            loginmessage.Text = "<a id=\"lnkRedirect\" href=" + Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(spweb.ServerRelativeUrl.TrimEnd('/'),
                        "/_layouts/15/authenticate.aspx?Source=/_layouts/15/appredirect.aspx?instance_id={6AD03E59-142E-4D7A-A71D-FEF0F1193F05}") + "></a>";
                            
                            

                        }
                        if (match == "New")
                        {
                            lblMessage.Text = "Your Application has been received but is pending approval";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        if (match == "Approved")
                        {

                            lblMessage.Text = "Your application has been approved but you have not been granted permission to use EMS";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        if (match == "")
                        {
                            lblMessage.Text = "Email not registered." + "\n" + "Please Register to use EMS";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            btnsignUp.Visible = true;
                        }

                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Error in checking Login Details, please try again later" + ex.Message;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }

                }
                else
                {
                    lblMessage.Text = "Please enter a valid email address to proceed";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }     
            else
            {
                lblMessage.Text = "Please Enter Email to proceed";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }

        private DataTable GetItemDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList Users = app.Lists["EMSUsers"];
                return Users.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error in checking Login Details, please try again later" + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            mvHomeScreen.ActiveViewIndex = 1;
            hdnActiveView.Value = "signUp";
            divConfirmation.Visible = false;

            divPassport.Visible = false;
            passport.Visible = false;


            divContinue.Visible = false;
            btnCodeVerify.Visible = true;

            divVerify.Visible = true;
            btnCodeVerify.Visible = true;
            lblEmailCode.Visible = true;



            lblEmailCode.Visible = true;

            btnsubmit.Visible = false;
            btnreset.Visible = false;

            emailaddress.Enabled = true;


            ddlTitle.Enabled = false;
            FName.Enabled = false;
            LName.Enabled = false;
            phone.Enabled = false;
            address.Enabled = false;
            ddlCity.Enabled = false;
            ddlRegion.Enabled = false;
            ddlCountry.Enabled = false;
            cnic.Enabled = false;
            ddlOccupation.Enabled = false;
            ddlprimaryAffiliation.Enabled = false;

            //lstAffiliation.Enabled = false;
            //lstInterest.Enabled = false;
            //lstSubDomain.Enabled = false;

            lstAffiliation.Visible = false;
            lstInterest.Visible = false;
            lstSubDomain.Visible = false;



            emailaddress.Text = Email.Text.Trim().ToLower();


            btnlogin.Visible = false;
            lblMessage.Text = "";

            //fetch all data from three lists
            DataTable dt1 = GetRegionDetails();
            ddlRegion.DataSource = dt1;
            ddlRegion.DataTextField = "Title";
            ddlRegion.DataValueField = "Title";
            ddlRegion.DataBind();
            ddlRegion.Items.Insert(0, new ListItem("Select", "-1"));
            ddlRegion.SelectedIndex = 0;

            DataTable dt2 = GetFieldDetails();
            lstInterest.DataSource = dt2;
            lstInterest.DataTextField = "Title";
            lstInterest.DataValueField = "Title";
            lstInterest.DataBind();
            lstInterest.SelectedIndex = 0;


            DataTable dt3 = GetUniOrgDetails();
            lstAffiliation.DataSource = dt3;
            lstAffiliation.DataTextField = "Title";
            lstAffiliation.DataValueField = "Title";
            lstAffiliation.DataBind();
            lstAffiliation.SelectedIndex = 0;

            ddlprimaryAffiliation.DataSource = dt3;
            ddlprimaryAffiliation.DataTextField = "Title";
            ddlprimaryAffiliation.DataValueField = "AppOrgID";
            ddlprimaryAffiliation.DataBind();
            ddlprimaryAffiliation.Items.Insert(0, new ListItem("Select", "-1"));
            ddlprimaryAffiliation.SelectedIndex = 0;


            DataTable dt4 = GetCountryDetails();
            ddlCountry.DataSource = dt4;
            ddlCountry.DataTextField = "Title";
            ddlCountry.DataValueField = "ID";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, new ListItem("Select", "-1"));
            //ddlCountry.Items.FindByValue("1").Selected = true;
            //ddlCountry.ClearSelection();
            //ddlCountry.Items.FindByValue("Pakistan").Selected = true;
            //ddlCountry.SelectedIndex = 1;
            ddlCountry.SelectedIndex = ddlCountry.Items.IndexOf(ddlCountry.Items.FindByText("Pakistan"));


            DataTable dt5 = GetCityDetails();
            ddlCity.DataSource = dt5;
            ddlCity.DataTextField = "Title";
            ddlCity.DataValueField = "Title";
            ddlCity.DataBind();
            ddlCity.SelectedIndex = 0;
            ddlCity.Items.Insert(0, new ListItem("Select", "-1"));

            DataTable dt6 = GetOccuplationDetails();
            ddlOccupation.DataSource = dt6;
            ddlOccupation.DataTextField = "Title";
            ddlOccupation.DataValueField = "Title";
            ddlOccupation.DataBind();
            ddlOccupation.Items.Insert(0, new ListItem("Select", "-1"));
            ddlOccupation.SelectedIndex = 0;

            DataTable dt7 = GetSubInterestCategoryDetails();
            lstSubDomain.DataSource = dt7;
            lstSubDomain.DataTextField = "Title";
            lstSubDomain.DataValueField = "Title";
            lstSubDomain.DataBind();
            lstSubDomain.SelectedIndex = 0;
        }

        private DataTable GetUniOrgDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList UniOrg = app.Lists["Affiliation"];
                return UniOrg.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading List of University/Organizations, of Interest Fields, Check your Internet Connection...." + ex.Message;
              
            }
            return null;
        }

        private DataTable GetFieldDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList Interest = app.Lists["UniversityDomain"];
                return Interest.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading List of Interest Fields, Check your Internet Connection...." + ex.Message;
                
            }
            return null;
        }

        private DataTable GetRegionDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList Region = app.Lists["Region"];
                return Region.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading Regions, Check your Internet Connection...." + ex.Message;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }


        private DataTable GetCountryDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList country = app.Lists["Country"];
                return country.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading Regions, Check your Internet Connection...." + ex.Message;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }

        private DataTable GetCityDetails()
        {

            try
            {

                string selectedvalue = ddlCountry.SelectedItem.Value;

                SPWeb app = SPContext.Current.Web;
                SPList city = app.Lists["City"];
                string camlQuery = string.Format(@"<Where><In><FieldRef Name='CountryID' /><Values><Value Type='Lookup'>" + selectedvalue + "</Value></Values></In></Where>");
                SPQuery query = new SPQuery();
                query.Query = camlQuery;
                SPListItemCollection items = city.GetItems(query);
                DataTable dt5 = items.GetDataTable();
                return city.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading Regions, Check your Internet Connection...." + ex.Message;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }

        private DataTable GetOccuplationDetails()
        {

            try
            {
                SPWeb app = SPContext.Current.Web;
                SPList occuplation = app.Lists["Occupation"];
                return occuplation.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading Regions, Check your Internet Connection...." + ex.Message;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }
        private DataTable GetSubInterestCategoryDetails()
        {

            try
            {

                string selectedvalue = lstInterest.SelectedItem.Value;

                SPWeb app = SPContext.Current.Web;
                SPList subInterestCategory = app.Lists["UniversitySubDomain"];
                string camlQuery = string.Format(@"<Where><In><FieldRef Name='DomianLookup_x003a_Title' /><Values><Value Type='Lookup'>" + selectedvalue + "</Value></Values></In></Where>");
                SPQuery query = new SPQuery();
                query.Query = camlQuery;
                SPListItemCollection items = subInterestCategory.GetItems(query);
                DataTable dt5 = items.GetDataTable();
                return subInterestCategory.Items.GetDataTable();
            }
            catch (Exception ex)
            {
                lblSignUpMessage.Text = "Error in loading Regions, Check your Internet Connection...." + ex.Message;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
            }
            return null;
        }




        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //&& (ddlRegion.SelectedIndex > 0)
            bool regionCheck = false;
            string selectedtext = ddlCountry.SelectedItem.Text;
            if (selectedtext != "Pakistan" && ddlCountry.SelectedIndex > 0)
            {
                regionCheck = true;
            }
            else
            {
                if (ddlRegion.SelectedIndex > 0)
                {
                    regionCheck = true;
                }
                else
                {
                    regionCheck = false;
                }
            }

            if (ddlCountry.SelectedIndex > 0)
            {


            }

            if ((emailaddress.Text.Trim() != "") && (FName.Text.Trim() != "") && (LName.Text.Trim() != "") && ((cnic.Text.Trim() != "") || (passport.Text.Trim() != "")) && (ddlTitle.SelectedIndex > 0) && (phone.Text.Trim() != "") && (address.Text.Trim() != "") && (regionCheck == true) && ((lstInterest.GetSelectedIndices()).Length != 0) && ((lstSubDomain.GetSelectedIndices()).Length != 0) && ((lstAffiliation.GetSelectedIndices()).Length != 0) && (ddlprimaryAffiliation.SelectedIndex > 0) && (ddlCountry.SelectedIndex > 0) && (ddlCity.SelectedIndex > 0) && (ddlOccupation.SelectedIndex > 0))
            {

                try
                {
                    SPWeb app = SPContext.Current.Web;
                    SPList Users = app.Lists["EMSUsers"];

                    SPList InterestL = app.Lists["UniversityDomain"];
                    SPList RegionL = app.Lists["Region"];
                    SPList AffiliationL = app.Lists["Affiliation"];
                    SPList lstCountry = app.Lists["Country"];
                    SPList lstCity = app.Lists["City"];
                    SPList lstOccupation = app.Lists["Occupation"];
                    SPList lstSubInterestCategory = app.Lists["UniversitySubDomain"];




                    bool alreadyexists = false;
                    string message = "";
                    SPListItemCollection itemCollection = Users.Items;

                    foreach (SPListItem item in itemCollection)
                    {

                        string email = Convert.ToString(item["Title"]);
                        string status = Convert.ToString(item["ApplicationStatus"]);

                        if ((email == emailaddress.Text.Trim().ToLower()) && (status == "New"))
                        {
                            alreadyexists = true;
                            message = "Email Address/Account already in use and pending approval";
                        }
                        if ((email == emailaddress.Text.Trim().ToLower()) && (status == "Added"))
                        {
                            alreadyexists = true;
                            message = "Email Address/Account already in use";
                        }
                        if ((email == emailaddress.Text.Trim().ToLower()) && (status == "Approved"))
                        {
                            alreadyexists = true;
                            message = "Email Address/Account already in use";
                        }
                        if ((email == emailaddress.Text.Trim().ToLower()) && (status == "Rejected"))
                        {
                            alreadyexists = true;
                            message = "Email Address/Account already in use";
                        }


                    }

                    if (alreadyexists)
                    {
                        lblSignUpMessage.Text = message;
                        lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                        //lblMessage.Text = message;
                        //lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        SPListItem listItem = Users.Items.Add();
                        listItem["Title"] = emailaddress.Text.Trim().ToLower();

                        string selectedprefix = ddlTitle.SelectedItem.Text;
                        listItem["Name"] = FName.Text.Trim();
                        listItem["LastName"] = LName.Text.Trim();


                        String Add = address.Text.Trim();

                        if (Add.Length < 41)
                        {
                            listItem["Address"] = address.Text.Trim();

                        }
                        else
                        {
                             listItem["Address"] = address.Text.Trim().Substring(0, 40);
                        }

                        if(regionCheck == true)
                        {
                            String ID = cnic.Text.Trim();
                            if (ID.Length < 17)
                            {
                                listItem["CNIC"] = cnic.Text.Trim();
                            }
                            else
                            {
                                listItem["CNIC"] = cnic.Text.Trim().Substring(0, 16);
                            }

                        }
                        else
                        {
                             String ID = passport.Text.Trim();                           
                             listItem["Passport"] = passport.Text.Trim();                            

                        }
                    
                        
                       


                        //ListItem["Occupation"] = occupation.Text.Trim();
                        listItem["Prefix"] = ddlTitle.SelectedItem.Text;
                        listItem["ContactNumber"] = phone.Text.Trim();




                        SPListItemCollection itemCollectionR = RegionL.Items;

                        foreach (SPListItem item in itemCollectionR)
                        {
                            if (ddlRegion.SelectedValue.ToString() == Convert.ToString(item["Title"]))
                            {
                                listItem["Region"] = item;
                            }

                        }
                        SPFieldLookupValueCollection interestvalues = new SPFieldLookupValueCollection();

                        SPListItemCollection itemCollectionL = InterestL.Items;


                        foreach (ListItem interestItem in lstInterest.Items)
                        {
                            if (interestItem.Selected)
                            {
                                foreach (SPListItem item in itemCollectionL)
                                {
                                    if (interestItem.Text == (item["Title"]).ToString())
                                    {
                                        String fieldValue = item.ID + ";#" + item.Title;
                                        interestvalues.Add(new SPFieldLookupValue(fieldValue));
                                    }
                                }
                            }
                        }
                        listItem["Interest"] = interestvalues;


                        SPFieldLookupValueCollection subDomainValues = new SPFieldLookupValueCollection();

                        SPListItemCollection lstSubInterestCategoryItemCollection = lstSubInterestCategory.Items;

                        foreach (ListItem subDomainItem in lstSubDomain.Items)
                        {
                            if (subDomainItem.Selected)
                            {
                                foreach (SPListItem item in lstSubInterestCategoryItemCollection)
                                {
                                    if (subDomainItem.Text == (item["Title"]).ToString())
                                    {
                                        String fieldValue = item.ID + ";#" + item.Title;
                                        subDomainValues.Add(new SPFieldLookupValue(fieldValue));
                                    }
                                }
                            }
                        }
                        listItem["InterestSubCategory"] = subDomainValues;


                        SPFieldLookupValueCollection lstAffiliationValues = new SPFieldLookupValueCollection();
                        SPListItemCollection lstAffiliationItemCollection = AffiliationL.Items;

                        foreach (ListItem affiliationItem in lstAffiliation.Items)
                        {
                            if (affiliationItem.Selected)
                            {
                                foreach (SPListItem item in lstAffiliationItemCollection)
                                {
                                    if (affiliationItem.Text == (item["Title"]).ToString())
                                    {
                                        String fieldValue = item.ID + ";#" + item.Title;
                                        lstAffiliationValues.Add(new SPFieldLookupValue(fieldValue));
                                    }
                                }
                            }
                        }
                        listItem["Affiliation"] = lstAffiliationValues;

                        //foreach (SPListItem item in lstAffiliationItemCollection)
                        //{
                        //    if (ddlprimaryAffiliation.SelectedValue.ToString() == Convert.ToString(item["Title"]))
                        //    {
                        //        listItem["PrimaryAffiliation"] = item;
                        //    }

                        //}


                        listItem["PrimaryAffiliation"] = ddlprimaryAffiliation.SelectedValue.ToString();

                        SPListItemCollection countryitemCollection = lstCountry.Items;

                        foreach (SPListItem item in countryitemCollection)
                        {
                            if (ddlCountry.SelectedValue.ToString() == Convert.ToString(item["ID"]))
                            {
                                listItem["Country"] = item;
                            }

                        }

                        SPListItemCollection lstCityitemCollection = lstCity.Items;

                        foreach (SPListItem item in lstCityitemCollection)
                        {
                            if (ddlCity.SelectedValue.ToString() == item["Title"].ToString())
                            {
                                listItem["City"] = item;
                            }

                        }

                        SPListItemCollection lstOccupationitemCollection = lstOccupation.Items;

                        foreach (SPListItem item in lstOccupationitemCollection)
                        {
                            if (ddlOccupation.SelectedValue.ToString() == item["Title"].ToString())
                            {
                                listItem["Profession"] = item;
                            }

                        }


                        listItem["ApplicationStatus"] = "New";
                        listItem["Created"] = DateTime.Now;
                        listItem.Update();

                        lblMessage.Text = "Your Application has been successfully submitted!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        //Refreshpage();
                        divSignUp.Visible = false;
                        divConfirmation.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error in submitting Application, please try again! " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    Refreshpage();
                }
            }
            else
            {

                lblSignUpMessage.Text = "Please fill required fields, marked *";
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                //SignUpPanel.Visible = true;
                mvHomeScreen.ActiveViewIndex = 1;
                hdnActiveView.Value = "signUp";
                //LoginPanel.Visible = false;
                btnlogin.Visible = false;
                lblMessage.Text = "";


            }
        }

         protected void btnReset_Click(object sender, EventArgs e)
        {
            lblSignUpMessage.Text = "";
            lblSignUpMessage2.Text = "";



            mvHomeScreen.ActiveViewIndex = 1;
            hdnActiveView.Value = "signUp";
            FName.Text = "";
            LName.Text = "";


            emailaddress.Enabled = false;
            cnic.Text = "";
            passport.Text = "";
            phone.Text = "";
            address.Text = "";
            ddlOccupation.SelectedIndex = -1;
            ddlprimaryAffiliation.SelectedIndex = -1;

            btnlogin.Visible = false;
            lblMessage.Text = "";

            lstInterest.SelectedIndex = -1;
            ddlRegion.SelectedIndex = -1;
            lstAffiliation.SelectedIndex = -1;
            lstSubDomain.SelectedIndex = -1;
            ddlCountry.SelectedIndex = ddlCountry.Items.IndexOf(ddlCountry.Items.FindByText("Pakistan"));
         }

  

        protected void btnResendCode_Click(object sender, EventArgs e)
        {
           

            lblSignUpMessage.Text = " ";


            try
            {
                string EmailAddress = emailaddress.Text.Trim().ToLower();
                if ((EmailAddress != "") && (EmailAddress.IndexOf('@') != -1))
                {


                    SPWeb app = SPContext.Current.Web;
                    SPList RegUsers = app.Lists["RegisterApplication"];


                    string alreadyexists = "No";
                    int resentcount = 0;
                    int resentcount2 = 0;
                    string CodetoSend = "000000";

                    SPListItemCollection itemCollection = RegUsers.Items;

                    foreach (SPListItem item in itemCollection)
                    {

                        string email = Convert.ToString(item["Title"]);
                        string status = Convert.ToString(item["VerificationStatus"]);
                        string code = Convert.ToString(item["VerificationCode"]);


                        if ((email == EmailAddress) && (status == "Unverified"))
                        {
                            alreadyexists = "Yes";
                            resentcount = resentcount + 1;
                            CodetoSend = code;
                            
                        }
                        if ((email == EmailAddress) && (status == "New"))
                        {
                            alreadyexists = "Yes";
                            resentcount2 = resentcount2 + 1;
                            CodetoSend = code;
                            
                        }
                        if ((email == EmailAddress) && (status == "Verified"))
                        {
                            alreadyexists = "Verified";
                            //here set message to already verified and make the rest of the form accessible

                            divVerify.Visible = true;
                            divContinue.Visible = false;
                            emailaddress.Enabled = false;

                            lblSignUpMessage3.Text = "Email Address Verified";
                            lblSignUpMessage3.ForeColor = System.Drawing.Color.Green;



                            lblSignUpMessage2.Text = "";

                            emailCode.Text = "";

                            btnCodeVerify.Visible = false;
                            lblEmailCode.Visible = false;


                            btnsubmit.Visible = true;
                            btnreset.Visible = true;

                            ddlTitle.Enabled = true;
                            FName.Enabled = true;
                            LName.Enabled = true;
                            phone.Enabled = true;
                            address.Enabled = true;
                            ddlCity.Enabled = true;
                            ddlRegion.Enabled = true;
                            ddlCountry.Enabled = true;
                            cnic.Enabled = true;
                            ddlOccupation.Enabled = true;
                            ddlprimaryAffiliation.Enabled = true;
                            //lstAffiliation.Enabled = true;
                            //lstInterest.Enabled = true;
                            //lstSubDomain.Enabled = true;


                            lstAffiliation.Visible = true;
                            lstInterest.Visible = true;
                            lstSubDomain.Visible = true;

                        }


                    }
                    if(alreadyexists == "Yes")
                    {
                        divContinue.Visible = true;
                        divVerify.Visible = false;
                        btnCodeVerify.Visible = false;
                        emailCode.Visible = true;
                        emailaddress.Enabled = false;
                        lblEmailCode.Visible = false;
                         
                        if (((resentcount <= 5) && (resentcount2 <= 5)) ||  (resentcount2 <= 5))
                            {
                                SPWeb ap2 = SPContext.Current.Web;
                                SPList UsersR = ap2.Lists["RegisterApplication"];
                                SPListItem listItem = UsersR.Items.Add();
                                listItem["Title"] = emailaddress.Text.Trim().ToLower();
                                listItem["VerificationCode"] = CodetoSend;
                                listItem["VerificationStatus"] = "New";
                                listItem["Mark"] = "Pending";
                                listItem["Created"] = DateTime.Now;

                                listItem.Update();

                                lblSignUpMessage.Text = "Email Resent. Please enter code to continue with registration process";
                                lblSignUpMessage2.Text = "Didn't get your code? Sometimes it can take up to 15minutes. If it's been longer than that since your last try, try link below.";

                                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;

                            }
                            else if ((resentcount > 5) || (resentcount2 > 5))
                            {
                                int resent = resentcount2+resentcount;
                                lblSignUpMessage.Text = "We have already Resent Email:  " + resent + " times. Please wait 15minutes before Pressing Resend";
                                lblSignUpMessage2.Text = "Didn't get your code? Sometimes it can take up to 15minutes. If it's been longer than that since your last try, Please ensure your email address is correct. Click cancel at the bottom to begin process again";

                                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                            }
                            
                    }
                    if (alreadyexists =="No")
                    {

                        divContinue.Visible = true;
                        divVerify.Visible = false;
                        btnCodeVerify.Visible = false;
                        emailCode.Visible = true;
                        emailaddress.Enabled = false;
                        lblEmailCode.Visible = false;


                        string code = "000000000";

                        Random rnd1 = new Random();

                        for (int ctr = 1; ctr <= 2; ctr++)
                        {
                            code = " " + rnd1.Next();
                            code = code.Trim();
                        }


                        SPWeb ap = SPContext.Current.Web;
                        SPList UsersR = ap.Lists["RegisterApplication"];
                        SPListItem listItem = UsersR.Items.Add();
                        listItem["Title"] = emailaddress.Text.Trim().ToLower();
                        listItem["VerificationCode"] = code;
                        listItem["VerificationStatus"] = "New";
                        listItem["Mark"] = "Pending";
                        listItem["Created"] = DateTime.Now;

                        listItem.Update();

                        lblSignUpMessage.Text = "An Email has been sent with the Verification Code. Please enter code to continue with registration process";
                        lblSignUpMessage2.Text = "Didn't get your code? Sometimes it can take up to 15minutes. If it's been longer than that, click 'Resend Code' Link below.";

                        lblSignUpMessage.ForeColor = System.Drawing.Color.Red;



                    }

                }
                else
                {
                    lblSignUpMessage.Text = "Please enter a valid email address";
                    lblSignUpMessage.ForeColor = System.Drawing.Color.Red;

                }


            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblSignUpMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message + "::" + ex.StackTrace;
                lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                Refreshpage();
            }







        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            //btnsignUp.Visible = false;
            //SignUpPanel.Visible = false;
            btnlogin.Visible = true;
            mvHomeScreen.ActiveViewIndex = 0;
            hdnActiveView.Value = "logIn";
            lblSignUpMessage.Text = "";
            lblSignUpMessage2.Text = "";
            lblSignUpMessage3.Text = "";
            //LoginPanel.Visible = true;
            FName.Text = "";
            LName.Text = "";
            cnic.Text = "";
            passport.Text = "";
            phone.Text = "";
            address.Text = "";
            ddlOccupation.SelectedIndex = -1;
            ddlprimaryAffiliation.SelectedIndex = -1;
            lblMessage.Text = "";
            lstInterest.SelectedIndex = -1;
            ddlRegion.SelectedIndex = -1;
            lstAffiliation.SelectedIndex = -1;
            ddlCountry.SelectedIndex = ddlCountry.Items.IndexOf(ddlCountry.Items.FindByText("Pakistan"));


        }




    

        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            writer.Write(BindScript("/Style Library/HEC/jquery.js", true));
            writer.Write(BindStyle("/Style Library/HEC/App.css", true));
            //writer.Write(BindStyle("/Style Library/HEC/App.js", true));
            writer.Write(BindScript("/Style Library/HEC/App.js", true));
            
            //writer.Write(BindScript("/Style Library/HEC/bootstrap.css", true));

            writer.Write(BindScript("/Style Library/codebase/dhtmlxscheduler.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_collision.js", true));
            writer.Write(BindStyle("/Style Library/codebase/dhtmlxscheduler.css", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_timeline.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_quick_info.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_treetimeline.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_outerdrag.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_readonly.js", true));
            writer.Write(BindScript("/Style Library/codebase/ext/dhtmlxscheduler_tooltip.js", true));

            base.Render(writer);
        }

        private string BindStyle(string StyleUrl, bool PickFromSiteCollection)
        {
            if (PickFromSiteCollection)
                StyleUrl = Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Site.RootWeb.Url, StyleUrl);
            else
                StyleUrl = Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Web.Url, StyleUrl);

            return string.Format(@"<link rel=""stylesheet"" href=""{0}"" type=""text/css"" />", StyleUrl);
        }

        // Loading the scripts
        private string BindScript(string ScriptUrl, bool PickFromSiteCollection)
        {
            if (PickFromSiteCollection)
                ScriptUrl = Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Site.RootWeb.Url, ScriptUrl);
            else
                ScriptUrl = Microsoft.SharePoint.Utilities.SPUrlUtility.CombineUrl(SPContext.Current.Web.Url, ScriptUrl);

            return string.Format(@"<script type=""text/javascript"" src=""{0}""></script>", ScriptUrl);

        }

        protected void lstInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
            lstSubDomain.Items.Clear();

            string strInterest = "";
            foreach (ListItem item in lstInterest.Items)
            {
                if (item.Selected)
                {
                    strInterest += item.Text + ";";
                }
            }
            string[] interest = strInterest.Split(';');
            SPWeb app = SPContext.Current.Web;
            SPList subInterestCategory = app.Lists["UniversitySubDomain"];

            var str1 = "<Where><In><FieldRef Name='DomianLookup_x003a_Title' /><Values>";
            var str2 = "";
            var str3 = "</Values>  </In></Where></Query></View>";
            int i = 0;
            while (i < interest.Length)
            {
                str2 += "<Value Type='Lookup'>" + interest[i] + "</Value>";
                i++;
            }
            string camlQuery = str1 + str2 + str3;

            SPQuery query = new SPQuery();
            query.Query = camlQuery;
            SPListItemCollection items = subInterestCategory.GetItems(query);
            DataTable dt7 = items.GetDataTable();

            lstSubDomain.DataSource = dt7;
            lstSubDomain.DataTextField = "Title";
            lstSubDomain.DataValueField = "Title";
            lstSubDomain.DataBind();

        }

        protected void btnVerifyCode_Click(object sender, EventArgs e)
          {

              lblSignUpMessage.Text = " ";
              

              try
              {
                  string EmailAddress = emailaddress.Text.Trim().ToLower();
                  if ((EmailAddress != "") && (EmailAddress.IndexOf('@') != -1))
                  {


                      SPWeb app = SPContext.Current.Web;
                      SPList RegUsers = app.Lists["RegisterApplication"];


                      bool alreadyexists = false;
                      string message = "";
                      string verificationcode = "";
                      string verificationstatus = "";

                      SPListItemCollection itemCollection = RegUsers.Items;

                      foreach (SPListItem item in itemCollection)
                      {

                          string email = Convert.ToString(item["Title"]);
                          string status = Convert.ToString(item["VerificationStatus"]);
                          string code = Convert.ToString(item["VerificationCode"]);


                          if ((email == EmailAddress) && ((status == "Unverified") || (status == "New")))
                          {
                              alreadyexists = true;
                              
                              divContinue.Visible = true;
                              divVerify.Visible = false;
                              btnCodeVerify.Visible = false;
                              emailCode.Visible = true;
                              emailaddress.Enabled = false;
                              lblEmailCode.Visible = false;

                              SPWeb ap2 = SPContext.Current.Web;
                              SPList UsersR = ap2.Lists["RegisterApplication"];
                              SPListItem listItem = UsersR.Items.Add();
                              listItem["Title"] = emailaddress.Text.Trim().ToLower();
                              listItem["VerificationCode"] = code;
                              listItem["VerificationStatus"] = "New";
                              listItem["Mark"] = "Pending";
                              listItem["Created"] = DateTime.Now;

                              listItem.Update();

                              lblSignUpMessage.Text = "An Email has been sent with the verification code. Please enter code to continue with registration process";
                              lblSignUpMessage2.Text = "Didn't get your code? Sometimes it can take up to 15minutes. If it's been longer than that since your last try, try link below.";

                              lblSignUpMessage.ForeColor = System.Drawing.Color.Red;


                          }
                          if ((email == EmailAddress) && (status == "Verified"))
                          {
                              alreadyexists = true;
                              message = "Email Address Verified";
                             

                              //here set message to already verified and make the rest of the form accessible

                              divVerify.Visible = true;
                              divContinue.Visible = false;
                              emailaddress.Enabled = false;

                              lblSignUpMessage3.Text = "Email Address Verified";
                              lblSignUpMessage3.ForeColor = System.Drawing.Color.Green;

                            

                              lblSignUpMessage2.Text = "";

                              emailCode.Text = "";

                              btnCodeVerify.Visible = false;
                              lblEmailCode.Visible = false;


                              btnsubmit.Visible = true;
                              btnreset.Visible = true;

                              ddlTitle.Enabled = true;
                              FName.Enabled = true;
                              LName.Enabled = true;
                              phone.Enabled = true;
                              address.Enabled = true;
                              ddlCity.Enabled = true;
                              ddlRegion.Enabled = true;
                              ddlCountry.Enabled = true;
                              cnic.Enabled = true;
                              ddlOccupation.Enabled = true;
                              ddlprimaryAffiliation.Enabled = true;
                              //lstAffiliation.Enabled = true;
                              //lstInterest.Enabled = true;
                              //lstSubDomain.Enabled = true;


                              lstAffiliation.Visible = true;
                              lstInterest.Visible = true;
                              lstSubDomain.Visible = true;

                          }


                      }
                      if (!alreadyexists)
                      {
                         
                          divContinue.Visible = true;
                          divVerify.Visible = false;
                          btnCodeVerify.Visible = false;
                          emailCode.Visible = true;
                          emailaddress.Enabled = false;
                          lblEmailCode.Visible = false;


                          string code = "000000000";

                          Random rnd1 = new Random();

                          for (int ctr = 1; ctr <= 2; ctr++)
                          {
                              code = " " + rnd1.Next();
                              code = code.Trim();
                          }


                          SPWeb ap = SPContext.Current.Web;
                          SPList UsersR = ap.Lists["RegisterApplication"];
                          SPListItem listItem = UsersR.Items.Add();
                          listItem["Title"] = emailaddress.Text.Trim().ToLower();
                          listItem["VerificationCode"] = code;
                          listItem["VerificationStatus"] = "New";
                          listItem["Mark"] = "Pending";
                          listItem["Created"] = DateTime.Now;

                          listItem.Update();

                          lblSignUpMessage.Text = "An Email has been sent with the Verification Code. Please enter code to continue with registration process";
                          lblSignUpMessage2.Text = "Didn't get your code? Sometimes it can take up to 15minutes. If it's been longer than that, click 'Resend Code' Link below.";

                          lblSignUpMessage.ForeColor = System.Drawing.Color.Red;



                      }

                  }
                  else
                  {
                      lblSignUpMessage.Text = "Please enter a valid email address";
                      lblSignUpMessage.ForeColor = System.Drawing.Color.Red;

                  }


              }
              catch (Exception ex)
              {
                  lblMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message;
                  lblMessage.ForeColor = System.Drawing.Color.Red;
                  lblSignUpMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message + "::" + ex.StackTrace;
                  lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                  Refreshpage();
              }
          }



          //protected void btnResend_Click(object sender, EventArgs e)
          //{
          //    divVerify.Visible = true;
          //    divContinue.Visible = false;
          //    emailaddress.Enabled = true;

          //    lblSignUpMessage.Text = "";
          //    lblSignUpMessage2.Text = "";

          //    emailCode.Text = "";

          //    btnCodeVerify.Visible = true;
          //    lblEmailCode.Visible = true;


          //    btnsubmit.Visible = false;
          //    btnreset.Visible = false;

          //    ddlTitle.Enabled = false;
          //    FName.Enabled = false;
          //    LName.Enabled = false;
          //    phone.Enabled = false;
          //    address.Enabled = false;
          //    ddlCity.Enabled = false;
          //    ddlRegion.Enabled = false;
          //    ddlCountry.Enabled = false;
          //    cnic.Enabled = false;
          //    ddlOccupation.Enabled = false;
          //    ddlprimaryAffiliation.Enabled = false;
          //    //lstAffiliation.Enabled = false;
          //    //lstInterest.Enabled = false;
          //    //lstSubDomain.Enabled = false;


          //    lstAffiliation.Visible = false;
          //    lstInterest.Visible = false;
          //    lstSubDomain.Visible = false;


          //}

          protected void btnContinue_Click(object sender, EventArgs e)
          {
              //here enable all controls if verification code matches else display message
              //update whether verified or not

              try
              {

                  if (emailCode.Text.Trim() != "")
                  {

                      string Code = emailCode.Text.Trim();

                      SPWeb app = SPContext.Current.Web;
                      SPList RegUsers = app.Lists["RegisterApplication"];


                      string codematches = "No";
                      string CodeMatched = "00000";
                      string EmailAddress = emailaddress.Text.Trim().ToLower();
                      string ECode = emailCode.Text.Trim();

                      SPListItemCollection itemCollection = RegUsers.Items;

                      foreach (SPListItem item in itemCollection)
                      {

                          string email = Convert.ToString(item["Title"]);
                          string code = Convert.ToString(item["VerificationCode"]);


                          if ((email == EmailAddress) && (ECode == code))
                          {

                              codematches = "Yes";
                              CodeMatched = code;
                              item["VerificationStatus"] = "Verified";
                              item["Mark"] = "Delete";
                              item.Update();
                          }
                      }

                      if (codematches == "Yes")
                      {
                          //delete all entries where the email appears
                          //add an entry with verified status


                          SPWeb ap2 = SPContext.Current.Web;
                          SPList UsersR = ap2.Lists["RegisterApplication"];
                          SPListItem listItem = UsersR.Items.Add();
                          listItem["Title"] = emailaddress.Text.Trim().ToLower();
                          listItem["VerificationCode"] = CodeMatched;
                          listItem["VerificationStatus"] = "Verified";
                          listItem["Mark"] = "Final";
                          listItem["Created"] = DateTime.Now;

                          listItem.Update();

                          divVerify.Visible = true;
                          divContinue.Visible = false;
                          emailaddress.Enabled = false;

                          lblSignUpMessage3.Text = "Email Address Verified";
                          lblSignUpMessage3.ForeColor = System.Drawing.Color.Green;

                          lblSignUpMessage.Text = "Thank you for verifying you email address, Please fill all fields marked * and Submit Application";
                          lblSignUpMessage.ForeColor = System.Drawing.Color.Green;

                          lblSignUpMessage2.Text = "";

                          emailCode.Text = "";

                          btnCodeVerify.Visible = false;
                          lblEmailCode.Visible = false;


                          btnsubmit.Visible = true;
                          btnreset.Visible = true;

                          ddlTitle.Enabled = true;
                          FName.Enabled = true;
                          LName.Enabled = true;
                          phone.Enabled = true;
                          address.Enabled = true;
                          ddlCity.Enabled = true;
                          ddlRegion.Enabled = true;
                          ddlCountry.Enabled = true;
                          cnic.Enabled = true;
                          ddlOccupation.Enabled = true;
                          ddlprimaryAffiliation.Enabled = true;
                          //lstAffiliation.Enabled = true;
                          //lstInterest.Enabled = true;
                          //lstSubDomain.Enabled = true;



                          lstAffiliation.Visible = true;
                          lstInterest.Visible = true;
                          lstSubDomain.Visible = true;


                      }
                      if (codematches == "No")
                      {
                          divVerify.Visible = false;
                          divContinue.Visible = true;
                          emailaddress.Enabled = false;

                          lblSignUpMessage.Text = "Incorrect Code, please try again";
                          lblSignUpMessage.ForeColor = System.Drawing.Color.Red;

                          lblSignUpMessage2.Text = "";
                          lblSignUpMessage3.Text = "";


                          emailCode.Text = "";

                          btnCodeVerify.Visible = false;
                          lblEmailCode.Visible = false;


                          btnsubmit.Visible = false;
                          btnreset.Visible = false;

                          ddlTitle.Enabled = false;
                          FName.Enabled = false;
                          LName.Enabled = false;
                          phone.Enabled = false;
                          address.Enabled = false;
                          ddlCity.Enabled = false;
                          ddlRegion.Enabled = false;
                          ddlCountry.Enabled = false;
                          cnic.Enabled = false;
                          ddlOccupation.Enabled = false;
                          ddlprimaryAffiliation.Enabled = false;
                          //lstAffiliation.Enabled = false;
                          //lstInterest.Enabled = false;
                          //lstSubDomain.Enabled = false;


                          lstAffiliation.Visible = false;
                          lstInterest.Visible = false;
                          lstSubDomain.Visible = false;
                      }



                  }
                  else
                  {
                      lblSignUpMessage.Text = "Please enter verification code";
                      lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                  }
              }
              catch (Exception ex)
              {
                  lblMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message;
                  lblMessage.ForeColor = System.Drawing.Color.Red;
                  lblSignUpMessage.Text = "Error in Sending Verification Email, Please Check Email Address" + ex.Message + "::" + ex.StackTrace;
                  lblSignUpMessage.ForeColor = System.Drawing.Color.Red;
                  Refreshpage();

              }

          }


             
             





          


        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();

            string selectedvalue = ddlCountry.SelectedItem.Value;

            string selectedtext = ddlCountry.SelectedItem.Text;
            if (selectedtext != "Pakistan")
            {
                divRegion.Visible = false;
                //lblRegion.Visible = false;
                //ddlRegion.Visible = false;
                //reqRegion.Visible = false;


                divCNIC.Visible = false;
                cnic.Visible = false;
                //lblCNIChelp.Visible = false;

                divPassport.Visible = true;
                passport.Visible = true;
                //lblpassporthelp.Visible = true;

            }
            else
            {
                divRegion.Visible = true;

                //lblRegion.Visible = true;
                ddlRegion.Visible = true;
                //reqRegion.Visible = true;

                divCNIC.Visible = true;
                cnic.Visible = true;
               // lblCNIChelp.Visible = true;


                divPassport.Visible = false;
                passport.Visible = false;
                //lblpassporthelp.Visible = false;


            }

            SPWeb app = SPContext.Current.Web;
            SPList lstCity = app.Lists["City"];

            string camlQuery = string.Format(@"<Where><In><FieldRef Name='CountryID' /><Values><Value Type='Lookup'>" + selectedvalue + "</Value></Values></In></Where>");

            SPQuery query = new SPQuery();
            query.Query = camlQuery;
            SPListItemCollection items = lstCity.GetItems(query);
            DataTable dt5 = items.GetDataTable();

            ddlCity.DataSource = dt5;
            ddlCity.DataTextField = "Title";
            ddlCity.DataValueField = "ID";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, new ListItem("Select", "-1"));
        }
    }
}

  