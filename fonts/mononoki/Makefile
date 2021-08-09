# $OpenBSD: Makefile,v 1.1.1.1 2021/08/09 08:55:27 bentley Exp $

COMMENT =	font for programming and code review

TYPEFACE =	mononoki
V =		1.3

DISTFILES =	mononoki-${V}{mononoki}.zip
MASTER_SITES =	https://github.com/madmalik/mononoki/releases/download/${V}/

HOMEPAGE =	https://madmalik.github.io/mononoki/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# SIL Open Font License 1.1
PERMIT_PACKAGE =	Yes

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes
WRKSRC =	${WRKDIST}/webfont

.include <bsd.port.mk>
