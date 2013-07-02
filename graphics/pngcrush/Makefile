# $OpenBSD: Makefile,v 1.66 2013/07/02 12:21:42 benoit Exp $

COMMENT =		optimizer for PNG files

DISTNAME =		pngcrush-1.7.65
CATEGORIES =		graphics

HOMEPAGE =		http://pmt.sourceforge.net/pngcrush/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# custom, see pngcrush.c
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pmt/}

MAKE_FLAGS =		CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -I. -DZ_SOLO"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
