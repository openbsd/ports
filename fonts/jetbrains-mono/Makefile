# $OpenBSD: Makefile,v 1.1.1.1 2020/04/14 14:55:32 rsadowski Exp $

COMMENT =	monotype font for developers

V =		1.0.2
DISTNAME =	${TYPEFACE}-$V
PKGNAME =	jetbrains-mono-$V

CATEGORIES =	fonts x11

HOMEPAGE =	https://www.jetbrains.com/lp/mono/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://download.jetbrains.com/fonts/

TYPEFACE =	JetBrainsMono

FONT_DISTSUBDIR =	${DISTNAME}/ttf
MODULES =	font
WRKDIST =	${WRKDIR}

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
