
classdef Email < handle
    
    properties(Access = private)

        stData;
        
    end
        
    methods
        
        function [obj] = Email()
            
            stData = getEmailData();
            setpref('Internet','E_mail', stData.E_mail);
            setpref('Internet','SMTP_Server', stData.SMTP_Server)
            setpref('Internet','SMTP_Username',stData.SMTP_Username);
            setpref('Internet','SMTP_Password', stData.SMTP_Password);

            props = java.lang.System.getProperties;
            props.setProperty('mail.smtp.starttls.enable','true');
            props.setProperty('mail.smtp.auth','true');
            props.setProperty('mail.smtp.port','587');
            
        end
        
        function [] = send(obj, sEmail, sHead, sMessage)
        
            sendmail(sEmail, sHead, sMessage);

        end

    end

end