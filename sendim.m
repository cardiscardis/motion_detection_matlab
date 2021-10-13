function sendim(filename;

 username = 'testmatlab793@gmail.com;
 password = 'password';
 setpref('Internet', 'E_mail', username);
 setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
 setpref('Internet', 'SMTP_Username', username);
 setpref('Internet', 'SMTP_Password', password);
 props = java.lang.System.getProperties;
 props.setProperty('mail.smtp.auth', 'true'');
 props.setProperty('mail.smtp.socketFactory.class', ...
 		  'javax.net.ssl.SSLSocketFactory');
 props.setProperty('mail.smtp.socketFactory.port', '456');
 emailto = 'ibiekay@gmail.com';
 sendmail(emailto, 'my Subject', 'my message', filename);