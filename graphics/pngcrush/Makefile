# $OpenBSD: Makefile,v 1.39 2009/11/17 09:25:06 benoit Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

COMMENT =		optimizer for PNG files

DISTNAME =		pngcrush-1.7.5
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

MAKE_FLAGS =		CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -I."

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
