#$OpenBSD: Makefile,v 1.21 2012/10/04 07:23:17 brad Exp $

SHARED_ONLY =	Yes

COMMENT =	accessing DVD files

DISTNAME =	libdvdread-4.2.0
REVISION =	0
CATEGORIES =	devel
MASTER_SITES =	${HOMEPAGE}releases/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=	dvdread		5.0

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

RUN_DEPENDS =	converters/libdvdcss>=1.2.12

MAKE_ENV =	LIBDVDREAD_VERSION=${LIBdvdread_VERSION}

USE_GMAKE =	Yes
CONFIGURE_STYLE = simple
CONFIGURE_SCRIPT = configure2
CONFIGURE_ARGS =--prefix="${PREFIX}" \
		--cc="${CC}" \
		--extra-cflags="${CFLAGS}" \
		--disable-debug \
		--disable-opts

.include <bsd.port.mk>
