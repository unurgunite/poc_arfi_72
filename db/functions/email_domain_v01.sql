CREATE OR REPLACE FUNCTION email_domain(email TEXT)
    RETURNS TEXT AS
$$
BEGIN
    RETURN lower(split_part(email, '@', 2));
END;
$$ LANGUAGE plpgsql IMMUTABLE;

