--select [user_id], [user_pwd] from [Member] where [user_id]='rm'
--select [user_id] as '帳號', [user_pwd] as '密碼',[user_name] as '姓名' from [Member] where [sex]=1
--select [user_name] from [Member] where [license] like 'A%' or [license] like 'B%'
-- %->可變長度萬用字元 _->固定長度萬用字元
--select [user_name] from [Member] where [address] like N'%地址%'
--select * from [Member] order by [birth] desc
--select top 1 * from [Member] order by [birth]
/*insert into [Member] ([user_id], [user_pwd], [user_name], [license], [address], [tel]) values ('Ken', '99999', N'肯尼', 'Z198765432', N'地址3', N'電話3')*/
--update [Member] set [sex] = 1 where [user_id] = 'k'
--delete from [Member] where [user_id] = 'ken'
