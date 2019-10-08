<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sports_Car_Rental_Incident.aspx.cs" Inherits="Assignment_1b_N01359582.Sports_Car_Rental_Incident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sports Car Rental Incident Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <div id="testbox" runat="server"></div>
            <div class="col1">
                <h2>Sports Car Rental Incident Form</h2>
                <section>
                <div>
                     <h2>Renter's Information</h2>
                     <label>First Name:</label>
                     <asp:TextBox runat="server" ID="renter_firstname" ></asp:TextBox>
                     <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ControlToValidate="renter_firstname" ForeColor="Red" ErrorMessage="Please enter your first name" ></asp:RequiredFieldValidator>
                </div>
               
                <div>
                    <label>Last Name:</label>
                    <asp:TextBox runat="server" ID="renter_lastname" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_lastname" ForeColor="Red" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Email:</label>
                    <asp:TextBox runat="server" ID="renter_email" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_email" ForeColor="Red" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator>                     
                </div>
                <div>
                    <label>Addess:</label>
                    <asp:TextBox runat="server" ID="renter_address" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_address" ForeColor="Red" ErrorMessage="Please enter your address"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>City:</label>
                    <asp:TextBox runat="server" ID="renter_city" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_city" ForeColor="Red" ErrorMessage="Please enter your City name"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Country:</label>
                    <asp:TextBox runat="server" ID="renter_country" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_country" ForeColor="Red" ErrorMessage="Please enter your Country name"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Postal Code:</label>
                    <asp:TextBox runat="server" ID="renter_postalcode" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_postalcode" ForeColor="Red" ErrorMessage="Please enter your Postal Code"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Phone:</label>
                    <asp:TextBox runat="server" ID="renter_phone" ></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="renter_phone" ForeColor="Red" ValidationExpression ="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter a valid phone number."></asp:RegularExpressionValidator>
                </div>
                </section>

                <section>
                    <h2>Licence and Car Details</h2>
                    <div>
                        <label>Renter's Car Licence Plate #:</label>
                        <asp:TextBox runat="server" ID="renter_licencenumber"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" controltovalidate="renter_licencenumber" ForeColor="Red" Errormessage="Please enter a valid licencenumber"></asp:RequiredFieldValidator>
                    </div>
                     <div>
                        <label>Issued By:</label>
                        <asp:TextBox runat="server" ID="issued_authority"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="issued_authority" ForeColor="Red" ErrorMessage="The authority name entered is invalid"></asp:RequiredFieldValidator>
                    </div>
                     <div>
                        <label>Issued Date:</label>
                        <asp:TextBox runat="server" ID="issued_date"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate ="issued_date" ForeColor="Red" ErrorMessage="Entered date is invalid"></asp:RequiredFieldValidator>
                    </div> 
                     <div>
                        <label>Model:</label>
                        <asp:TextBox runat="server" ID="car_model"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="car_model" ForeColor="Red" ErrorMessage="please enter the car model"></asp:RequiredFieldValidator>
                    </div>
                     <div>
                        <label>Type:</label>
                        <asp:DropDownList runat="server" ID="car_type">
                            <asp:ListItem Text="-- Select One --" Value=""></asp:ListItem>
                            <asp:ListItem Text="Sedan" Value="Sedan"></asp:ListItem>
                            <asp:ListItem Text="SUV" Value="SUV"></asp:ListItem>
                            <asp:ListItem Text="Hatchback" Value="Hatchback"></asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="car_type" ForeColor="Red" ErrorMessage="Please select the type of car"></asp:RequiredFieldValidator>
                     </div>
                </section>
                <section>
                    <h2>Damages if any?</h2>
                    <div>
                        <label>Damges to the third party vehicle:</label>
                        <asp:RadioButtonList runat="server" ID="renter_answer">
                            <asp:ListItem Text="yes" Value="yes"></asp:ListItem>
                            <asp:ListItem Text="no" Value="no"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="renter_answer" ForeColor="Red" ErrorMessage="Please choose either Yes or No"></asp:RequiredFieldValidator>
                    </div>
                    <section>
                    <div>
                        <label>Number of people in the car at the time of accident?</label>
                        <asp:TextBox runat="server" ID="people_Incar"></asp:TextBox>
                        <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="people_Incar" ForeColor="Red" ErrorMessage="Please enter the value between 1 to 4." MinimumValue="1" MaximumValue="4" ></asp:RangeValidator>
                       
                    </div>
                    </section>
                    <div>
                        <label>If Reported to Police?</label>
                        <asp:RadioButtonList runat="server" ID="police_report">
                            <asp:ListItem Text="yes" Value="yes"></asp:ListItem>
                            <asp:ListItem Text="no" Value="no"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="police_report" ForeColor="Red" ErrorMessage="Please choose either Yes or No"></asp:RequiredFieldValidator>
                   </div>
                </section>
                <section id="confirmbox" runat="server">
                    
                </section>
                <section>
                    <asp:ValidationSummary runat="server" ShowSummary="true" />
                </section>
                <section>
                    <asp:Button Text="Submit" Value="submit" runat="server"/>
                </section>

            </div>

        </main>
    </form>
</body>
</html>
