CREATE POLICY "Enable read access to everyone"
ON public."Tutorial"
FOR SELECT USING (
  true
);