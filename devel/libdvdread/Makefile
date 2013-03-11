#$OpenBSD: Makefile,v 1.24 2013/03/11 10:50:09 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	accessing DVD files

DISTNAME =	libdvdread-4.2.0
REVISION =	2
CATEGORIES =	devel
MASTER_SITES =	${HOMEPAGE}releases/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=	dvdread		5.1

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

LIB_DEPENDS =	converters/libdvdcss>=1.2.12p0

MAKE_ENV =	LIBDVDREAD_VERSION=${LIBdvdread_VERSION}

USE_GMAKE =	Yes
CONFIGURE_STYLE = simple
CONFIGURE_SCRIPT = configure2
CONFIGURE_ARGS =--prefix="${PREFIX}" \
		--cc="${CC}" \
		--extra-cflags="${CFLAGS}" \
		--extra-cflags="-I${LOCALBASE}/include -DHAVE_DVDCSS_DVDCSS_H" \
		--extra-ldflags="-L${LOCALBASE}/lib" \
		--disable-debug \
		--disable-opts

WANTLIB += dvdcss

.include <bsd.port.mk>
