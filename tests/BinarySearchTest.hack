use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};

final class BinarySearchTest extends HackTest {
  public function provideBinarySeearchExamples(): vec<(vec<int>, int, int)> {
    return vec[
        tuple(vec[10, 11], 11, 1),
        tuple(vec[10, 11], 10, 0),
        tuple(vec[10, 11], 12, -1),
        tuple(vec[], 12, -1),
        tuple(vec[12], 12, 0),
    ];
  }

  <<DataProvider('provideBinarySeearchExamples')>>
  public function test(vec<int> $numbers, int $target, int $expected_output): void {
    expect(binary_search($numbers, $target))->toBeSame($expected_output);
  }
}
