all:
	scp skinner.ged burrowes.ged root@db:/burrowes/www/burrowes/FamilyTree/
	ssh root@db /burrowes/bin/reload-ged
