# $OpenBSD: Makefile,v 1.3 2022/02/27 22:14:14 gnezdo Exp $

COMMENT =	monotype font for developers

V =		2.242
DISTNAME =	${TYPEFACE}-$V
PKGNAME =	jetbrains-mono-$V

CATEGORIES =	fonts x11

HOMEPAGE =	https://www.jetbrains.com/lp/mono/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://download.jetbrains.com/fonts/

TYPEFACE =	JetBrainsMono

FONT_DISTSUBDIR =	fonts/ttf
MODULES =	font
WRKDIST =	${WRKDIR}

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
