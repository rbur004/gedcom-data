all:
	scp skinner.ged burrowes.ged root@db:/burrowes/www/burrowes/FamilyTree/
	ssh root@db /burrowes/bin/reload-ged
ext:
	scp skinner.ged burrowes.ged root@db-ext:/burrowes/www/burrowes/FamilyTree/
	ssh root@db-ext /burrowes/bin/reload-ged
