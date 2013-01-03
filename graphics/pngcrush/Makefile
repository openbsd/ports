# $OpenBSD: Makefile,v 1.57 2013/01/03 08:33:44 benoit Exp $

COMMENT =		optimizer for PNG files

DISTNAME =		pngcrush-1.7.41
CATEGORIES =		graphics

HOMEPAGE =		http://pmt.sourceforge.net/pngcrush/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# custom, see pngcrush.c
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pmt/}

MAKE_FLAGS =		CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -I. -DZ_SOLO"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
