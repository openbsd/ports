# $OpenBSD: Makefile,v 1.1.1.1 2003/06/27 14:55:35 naddy Exp $

COMMENT=	"find the country where IP address/hostname originates from"

DISTNAME=	GeoIP-1.2.0
CATEGORIES=	net

HOMEPAGE=	http://www.maxmind.com/geoip/
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/c/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=/var/db

EXAMPLESDIR=	${PREFIX}/share/examples/GeoIP

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		DEFAULT_CONFIG_FILE=${EXAMPLESDIR}/GeoIP.conf \
		DEFAULT_DB_FILE=${EXAMPLESDIR}/GeoIP.dat

pre-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}

.include <bsd.port.mk>
