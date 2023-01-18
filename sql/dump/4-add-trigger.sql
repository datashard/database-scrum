delimiter $$
create trigger before_delete_kunde
    before delete on kunde for each row
    begin
    set foreign_key_checks = 0;
    update bestellung set ref_kunde_id = 0 where ref_kunde_id=old.id;
    set foreign_key_checks = 1;
    end$$
delimiter ;