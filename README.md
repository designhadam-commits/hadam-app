# 디자인하담 — INTERNAL PORTAL

업무 전체를 하나의 웹페이지에서 관리하는 인터널 포털입니다.

## 기능 모듈

| 모듈 | 설명 | 연동 |
|------|------|------|
| ✅ 업무 체크리스트 | 오늘·주간 업무 관리, 완료율 추적 | localStorage |
| 📝 업무일지 | 날짜별 업무 기록, Ctrl+S 저장 | localStorage |
| 📅 캘린더 | 월별 일정 등록·관리 | localStorage |
| 📦 발주관리 | 자재 발주 이력, 입고 상태 추적 | localStorage |
| 🗂️ 당비실 재고관리 | 품목별 재고 현황 | localStorage |
| 🏗️ 공정관리 | 현장별 10단계 공정 진행률 | localStorage |
| 📸 인스타 콘텐츠 | 게시물 기획→예약→발행 관리 | localStorage |
| 🔍 SEO 블로그 자동화 | 키워드 기반 블로그 초안 생성 | - |
| 🧵 쓰레드 자동화 | hadam-thread 저장소 연동 | GitHub |
| ☁️ 파일 클라우드 | hadam-cloud 저장소 연동 | GitHub |

## 배포

GitHub Pages로 자동 배포됩니다. `main` 또는 `claude/happy-cannon-q1OyL` 브랜치에 push하면 자동으로 배포됩니다.

## 데이터

현재 모든 데이터는 브라우저 localStorage에 저장됩니다.
향후 hadam-cloud 연동을 통해 영구 저장 및 공유가 가능해집니다.
