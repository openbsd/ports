# $OpenBSD: Makefile,v 1.8 2005/12/30 21:04:39 steven Exp $

COMMENT=	"find the country where IP address/hostname originates from"

DISTNAME=	GeoIP-1.3.14
SHARED_LIBS=		GeoIP		4.14	\
			GeoIPUpdate	0.0
MODGNU_SHARED_LIBS=	GeoIP		''	\
			GeoIPUpdate	''
CATEGORIES=	net

HOMEPAGE=	http://www.maxmind.com/geoip/
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/c/

# GPL
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
