create or replace package body test_pkg as
   procedure ret_1 (p_in1   in  varchar2, 
                    p_out1  out varchar2)
   is
   begin
      p_out1 := '111';
   end;

   procedure ret_2 (p_in1   in  varchar2, 
                    p_out1  out varchar2,
                    p_out2  out varchar2)
   is
   begin
      p_out1 := '111';
      p_out2 := '222';
   end;

   procedure ret_3 (p_in1   in  varchar2, 
                    p_out1  out varchar2,
                    p_out2  out varchar2,
                    p_out3  out varchar2)
   is
   begin
      p_out1 := '111';
      p_out2 := '222';
      p_out3 := '333';
   end;

   function get_stmt (p_select    in  varchar2,
                      p_from      in  varchar2,
                      p_where     in  varchar2,
                      p_order_by  in  varchar2 default null) return varchar2
   is
      l_stmt   varchar2(4000);
   begin
      l_stmt := 'select ' || p_select || ' from ' || p_from || ' where 1 = 1 and ' || p_where;
      
      if p_order_by is not null then
         l_stmt := l_stmt || ' order by ' || p_order_by;
      end if;
      
      return l_stmt;
   end;
end;
/
