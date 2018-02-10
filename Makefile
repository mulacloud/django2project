run:
	@python manage.py runserver
cleanmigrations:
	@python manage.py runscript cleanmigrations
initdevdb:
	@python manage.py runscript initdevdb
startapp:
        ifeq ($(name),)
		$(info usage: make startapp name=<app_name>)
        else
		$(info App $(name) created)
		@python manage.py startapp $(name)
		@mv $(name) apps/
        endif
	@:
