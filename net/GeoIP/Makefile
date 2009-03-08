# $OpenBSD: Makefile,v 1.21 2009/03/08 12:44:45 steven Exp $

COMMENT=	find the country where IP address/hostname originates from

DISTNAME=	GeoIP-1.4.6
SHARED_LIBS +=  GeoIP		7.1	# .5.6
SHARED_LIBS +=  GeoIPUpdate	1.0	# .0.0
CATEGORIES=	net geo

HOMEPAGE=	http://www.maxmind.com/geoip/
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/c/ \
		http://www.maxmind.com/download/geoip/api/c/old/

# LGPL, GPL (parts of GeoIPUpdate)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=/var/db \
		${CONFIGURE_SHARED}
USE_LIBTOOL=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/GeoIP

FAKE_FLAGS=	DEFAULT_CONFIG_FILE=${EXAMPLESDIR}/GeoIP.conf \
		DEFAULT_DB_FILE=${EXAMPLESDIR}/GeoIP.dat

pre-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}

.include <bsd.port.mk>
