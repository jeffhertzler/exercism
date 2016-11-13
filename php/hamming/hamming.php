<?php

function distance($a, $b)
{
  if (strlen($a) !== strlen($b)) {
      throw new InvalidArgumentException('DNA strands must be of equal length.');
  }
  $distance = 0;
  for ($i = 0; $i < strlen($a); $i++) {
      $distance += $a[$i] === $b[$i] ? 0 : 1;
  }
  return $distance;
}
