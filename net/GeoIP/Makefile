# $OpenBSD: Makefile,v 1.15 2007/09/05 06:21:55 steven Exp $

COMMENT=	"find the country where IP address/hostname originates from"

DISTNAME=	GeoIP-1.4.3
SHARED_LIBS +=  GeoIP		5.3	# .5.3
SHARED_LIBS +=  GeoIPUpdate	1.0	# .0.0
CATEGORIES=	net geo

HOMEPAGE=	http://www.maxmind.com/geoip/
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/c/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=/var/db \
		${CONFIGURE_SHARED}
USE_LIBTOOL=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/GeoIP

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		DEFAULT_CONFIG_FILE=${EXAMPLESDIR}/GeoIP.conf \
		DEFAULT_DB_FILE=${EXAMPLESDIR}/GeoIP.dat

pre-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}

.include <bsd.port.mk>
