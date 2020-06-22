# $OpenBSD: Makefile,v 1.2 2020/06/22 09:43:45 cwen Exp $

COMMENT =		interactive test suite for agar

PKGNAME =		agartest-$V
REVISION =		0

WANTLIB += GL SDL X11 Xinerama ag_core ag_dev ag_gui ag_math c
WANTLIB += db fontconfig freetype jpeg m png pthread z

LIB_DEPENDS =		x11/agar/agar

WRKSRC =		${WRKDIST}/tests

.include <bsd.port.mk>
