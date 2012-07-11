# $OpenBSD: Makefile,v 1.26 2012/07/11 09:38:39 sthen Exp $

COMMENT=	find the country where IP address/hostname originates from

DISTNAME=	GeoIP-1.4.8
SHARED_LIBS +=  GeoIP		8.0	# .5.7
SHARED_LIBS +=  GeoIPUpdate	1.0	# .0.0
CATEGORIES=	net geo

HOMEPAGE=	http://www.maxmind.com/app/c
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/c/ \
		http://www.maxmind.com/download/geoip/api/c/old/

# LGPL, GPL (parts of GeoIPUpdate)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c z

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=/var/db \
		${CONFIGURE_SHARED}
USE_LIBTOOL=	Yes
USE_GROFF=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/GeoIP

FAKE_FLAGS=	DEFAULT_CONFIG_FILE=${EXAMPLESDIR}/GeoIP.conf \
		DEFAULT_DB_FILE=${EXAMPLESDIR}/GeoIP.dat

post-patch:
	@cd ${WRKSRC}; touch Makefile.in aclocal.m4 configure.in conf/Makefile.am

pre-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}

.include <bsd.port.mk>
