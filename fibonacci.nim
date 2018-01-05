## fibonacci.nim

from strutils import parseInt


proc fibonacci*(n: int): int =
  # nが0未満の場合、例外[AssertionError]を送出する
  assert(n >= 0)
  if n == 0: return 0
  elif n == 1: return 1
  else: return fibonacci(n - 2) + fibonacci(n - 1)


# メインモジュールならば以下を実行する
# Python の if __name__ = '__main__': に相当
when isMainModule:
  # 標準入力からの入力が10進数の整数でない場合は、例外[ValueError]を送出する
  let n: int = stdin.readLine.parseInt
  echo "n = ", n, ", fibonacci number: f(n) = ", fibonacci(n)
