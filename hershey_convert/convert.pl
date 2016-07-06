#!/usr/bin/perl

$ind=0;
$ptr=0;

print "Font[]:\n";
while (<>){
	chomp;
	if (/^\s*\d{1,5}\s*(\d+)(.+)/){
		if ($ind!=0){
			print "\n";
		}
		$fontptr[$ind]=$ptr;
		print "\n$1,\n";
		for ($i=0;$i<length($2);$i++){
			$d=ord(substr($2,$i,1));
			if ($i%10==9){
				print "\n";
			}
			print "$d, ";
		}
		$ptr=$ptr+($1*2+1);
		$ind++;
	}else{
		for ($i=0;$i<length($_);$i++){
			$d=ord(substr($_,$i,1));
			if ($i%10==9){
				print "\n";
			}
			print "$d, ";
		}
	}

}

print "\n\n-------------------------------\n\n";

print "Fontptr[]:\n\n";
for($i=0;$i<$ind;$i++){
	print "$fontptr[$i], ";
	if ($i%10==9){
		print "\n";
	}
}


print "\n\n-------------------------------\n\n";

print "Total $ind characters.\n";
