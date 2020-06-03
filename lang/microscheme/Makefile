# $OpenBSD: Makefile,v 1.2 2020/06/03 12:58:08 jturner Exp $

COMMENT =	scheme subset for atmel microcontrollers
DISTNAME =	microscheme-0.9.4
CATEGORIES =	lang

GH_ACCOUNT =	ryansuchocki
GH_PROJECT =	microscheme
GH_COMMIT =	3bc5611bd4194dae149ee6af58a95a7af3e63f34

HOMEPAGE =	https://ryansuchocki.github.io/microscheme/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

# vim is needed for xxd
BUILD_DEPENDS =	editors/vim,-main
MAKE_FILE =	makefile

.include <bsd.port.mk>
