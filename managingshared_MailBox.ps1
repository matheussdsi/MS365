Para que possamos desenvolver as atividades citadas se faz necessario estar logado na central do Exchange Online.
"connect-exchangeonline"



#Criar uma nova SharedMailBox#
"New-MailBox -Shared -Name $escolha o nome desejado"

#Adicionar usuários na SharedMailbox#
Add-MailboxPermission -Identity $shared_mailbox_primarysmtp -AccessRights FullAccess -InheritanceType All -AutoMapping:$true -User $E-mail do usuário.

#Adicionar permissão de Enviar Como/Send As$
Add-RecipientPermission -Identity $shared_mailbox_primarysmtp -AccessRights SendAs -Confirm:$false -Trustee $mailbox_user

#Remover Permissionamento do usuário da SharedMailBox#
#remover acesso Total da SharedMailBox#
Remove-MailboxPermission -Identity $shared_mailbox_primarysmtp -AccessRights FullAccess -Confirm:$false -User $mailbox_user

#remover permissão de enviar como/sendAs#
Remove-RecipientPermission -Identity $shared_mailbox_primarysmtp -AccessRights SendAs -Confirm:$false -Trustee $mailbox_user

Ao finalizar não se esqueça de sair da sessão ,alem de boa pratica fica bem melhor pra auditar ein :)
