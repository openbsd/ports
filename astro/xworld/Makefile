# $OpenBSD: Makefile,v 1.3 2002/03/21 20:35:41 espie Exp $

COMMENT=	"earth as seen from the direction of the sun"

DISTNAME=	xworld-2.0
CATEGORIES=	astro x11
NEED_VERSION=   1.515

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

MASTER_SITES=	ftp://gutemine.geo.uni-koeln.de/pub/xworld/ \
		ftp://ftp.Uni-Koeln.DE/misc/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= simple
CONFIGURE_ENV=	CAT=cat \
		STRIP=strip \
		INCLUDES="-I${X11BASE}/include" \
		LDLIBS="-lm -L${X11BASE}/lib -lX11" \
		MORELIBS=""
INSTALL_STRIP=

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xworld ${PREFIX}/bin

.include <bsd.port.mk>
