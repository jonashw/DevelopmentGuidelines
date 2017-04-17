$inkscape = """C:\Program Files\Inkscape\inkscape.exe"""
$ids = "Unknown","Flush","Straight","Ace_High","4_of_a_kind","3_of_a_kind","Full_House","2_Pair","1_Pair","High_Card"
$width = 250

$n = 1
Foreach($id in $ids){
	$full_id = "Poker_Hand_$id"
	$filename =  "Poker_Hand_Pattern-$($n.ToString("D2"))-$id.png"
	$cmd = $inkscape `
		+ " --export-png=""$filename""" `
		+ " --export-id=$full_id" `
		+ " --export-width=$width" `
		+ " Poker_Hand.svg"
	echo $filename
	Invoke-Expression "& $cmd" #http://stackoverflow.com/a/6338047/943730
	$n = $n + 1
}
