# $OpenBSD: Makefile,v 1.1.1.1 2003/06/27 15:06:13 naddy Exp $

COMMENT=	"Apache module for finding the country of web requests"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS} 

DISTNAME=	mod_geoip_1.2.0
PKGNAME=	mod_geoip-1.2.0
CATEGORIES=	www

HOMEPAGE=	http://www.maxmind.com/app/mod_geoip
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/mod_geoip/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	GeoIP.3::net/GeoIP

FLAGS=		-I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_REGRESS=	Yes

APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKSRC} && \
		${APXS} -c -o mod_geoip.so ${FLAGS} -lGeoIP mod_geoip.c
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_geoip-enable \
		> ${WRKBUILD}/mod_geoip-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_geoip.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_geoip-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_geoip
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/mod_geoip

.include <bsd.port.mk>
