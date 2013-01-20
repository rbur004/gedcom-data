all:
	scp burrowes.ged root@admin2:/services/www/burrowes.org/FamilyTree/burrowes.ged
	ssh root@admin2 bin/reload-ged
