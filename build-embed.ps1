# 체크리스트/탕비실/블로그 앱을 index.html에 base64로 내장(통합)하는 빌드 스크립트
# 임베드 앱(checklist/breakroom/blog의 index.html)을 고친 뒤 이 스크립트를 실행하면
# index.html 하나에 다시 반영됨. 실행: powershell -ExecutionPolicy Bypass -File build-embed.ps1
$ErrorActionPreference='Stop'
$dir=$PSScriptRoot
$idxPath="$dir\index.html"
$c=[Convert]::ToBase64String([IO.File]::ReadAllBytes("$dir\checklist\index.html"))
$b=[Convert]::ToBase64String([IO.File]::ReadAllBytes("$dir\breakroom\index.html"))
$bl=[Convert]::ToBase64String([IO.File]::ReadAllBytes("$dir\blog\index.html"))
$idx=[IO.File]::ReadAllText($idxPath,[Text.Encoding]::UTF8)
$idx=[Text.RegularExpressions.Regex]::Replace($idx,'<script id="embed-apps">.*?</script>','',[Text.RegularExpressions.RegexOptions]::Singleline)
$inject='<script id="embed-apps">window.EMBED_APPS={checklist:"'+$c+'",breakroom:"'+$b+'",blog:"'+$bl+'"};</script>'
$idx=$idx.Replace('<body>',('<body>'+"`n"+$inject))
[IO.File]::WriteAllText($idxPath,$idx,(New-Object Text.UTF8Encoding($false)))
Write-Output ("OK - index.html "+[Math]::Round((Get-Item $idxPath).Length/1kb)+" KB (3 apps embedded)")
