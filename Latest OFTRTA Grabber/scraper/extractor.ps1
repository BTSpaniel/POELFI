$input_path = ‘ofsitelinks.txt’
$output_file = ‘ofsitelinksx.txt’
$regex = ‘([a-zA-Z]{3,})://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)*/*?’
select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file