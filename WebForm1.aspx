<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DXWebApplication20.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <script >
        function conClick(s, e) {
    var isValid = ASPxClientEdit.ValidateGroup('Validation');
    if (isValid) 
        popUpClient.Show();  
    e.processOnServer = isValid;  
}
    </script>
    <h1>How to show popup only when Validation is ok</h1>
    <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBinding">
        <Items>
            <dx:BootstrapLayoutItem Caption="Name" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="xName">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Name is empty !" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Age" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="xAge" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <div id="default-popup-control-51" class="popup-target popup-target-sm">
                            <dx:BootstrapButton class="popup-target popup-target-sm" runat="server" Text="Submit" SettingsBootstrap-RenderOption="Primary" AutoPostBack="true" ID="btnSubmit"  OnClick="BtnSubmit_Click">
                                <SettingsBootstrap RenderOption="Primary"></SettingsBootstrap>
                                <ClientSideEvents Click="conClick" />
                            </dx:BootstrapButton>
                   
                        <dx:BootstrapButton runat="server" Text="Cancel" ID="btnCancel" SettingsBootstrap-RenderOption="Link" AutoPostBack="true" OnClick="btnCancel_Click">
                            <SettingsBootstrap RenderOption="Link"></SettingsBootstrap>
                        </dx:BootstrapButton>
                                 </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        </Items>
    </dx:BootstrapFormLayout>

    <dx:BootstrapPopupControl runat="server" HeaderText="Message"
        PopupHorizontalAlign="WindowCenter" ClientInstanceName="popUpClient" PopupVerticalAlign="WindowCenter" Width="500px" CloseAction="CloseButton"
        Modal="true">
        <ContentCollection>
            <dx:ContentControl>
                <div class="text-center">
                    <dx:BootstrapImage ID="BootstrapImage1" runat="server" Width="200" Height="200" ImageUrl="images/loading.gif"></dx:BootstrapImage>
                </div>
            </dx:ContentControl>
        </ContentCollection>
    </dx:BootstrapPopupControl>
</asp:Content>
