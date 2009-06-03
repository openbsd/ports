# $OpenBSD: Makefile,v 1.19 2009/06/03 00:48:51 pyr Exp $

DISTNAME=	mod_auth_radius-1.5.7
PKGNAME=	${DISTNAME}p5
CATEGORIES=	www
MODULES+=	apache-module

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=		radius_auth
MODAPACHE_ENABLE=	mod_auth_radius-enable
MODAPACHE_MODULE=	mod_auth_radius.so

COMMENT=	Apache RADIUS authentication module
HOMEPAGE=	http://www.freeradius.org/mod_auth_radius/
MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/
EXTRACT_SUFX=	.tar

NO_REGRESS=	Yes

do-build:
	@cd ${WRKSRC}; /usr/sbin/apxs -c mod_auth_radius.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_auth_radius
	${INSTALL_DATA} ${WRKSRC}/httpd.conf \
		${PREFIX}/share/examples/mod_auth_radius/httpd.conf-example
	${INSTALL_DATA} ${WRKSRC}/htaccess \
		${PREFIX}/share/examples/mod_auth_radius/htaccess-example
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
