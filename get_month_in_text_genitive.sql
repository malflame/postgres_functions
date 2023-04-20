CREATE OR REPLACE FUNCTION public.get_month_in_text_genitive(date)
 RETURNS text
 LANGUAGE plpgsql
 STABLE STRICT
AS $function$
begin 
	return case when to_char($1,'mm') similar to ('03|08') then concat(to_char($1,'TMMonth'),'а')
		else concat(left(to_char($1,'TMMonth'),-1),'я') end;
end;
$function$;