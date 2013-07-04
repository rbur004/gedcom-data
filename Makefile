all:
	scp skinner.ged burrowes.ged root@admin2:/services/www/burrowes.org/FamilyTree/
	ssh root@admin2 bin/reload-ged
work:
	scp skinner.ged burrowes.ged root@external1.wikarekare.org:/services/www/burrowes.org/FamilyTree/
	ssh root@external1.wikarekare.org bin/reload-ged
