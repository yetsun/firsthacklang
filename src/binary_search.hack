use namespace HH\Lib\Vec;
use namespace HH\Lib\C;

function binary_search(vec<int> $numbers, int $target): int {

    $left = 0;
    $right = C\count($numbers) - 1;

    while($left <= $right){
        $m = (int)(($left + $right) / 2);

        if($target > $numbers[$m] ){
            $left = $m + 1;
        }else if($target < $numbers[$m]){
            $right = $m - 1;
        }else{
            return $m;
        }
    }

    return -1;
}
