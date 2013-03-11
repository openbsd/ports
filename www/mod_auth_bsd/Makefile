# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:43 espie Exp $

COMMENT=	provides HTTP Basic authentication via bsd auth

VERSION=	0.8.2
DISTNAME=	bsdauth-${VERSION}
PKGNAME=	mod_auth_bsd-${VERSION}
REVISION=	6
EXTRACT_SUFX=	.tgz
CATEGORIES=	www
MASTER_SITES=	http://www.25thandclement.com/~william/projects/releases/

HOMEPAGE=	http://www.25thandclement.com/~william/projects/bsdauth.html

MODULES+=	apache-module

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		event

MODAPACHE_NAME=		bsd_auth
MODAPACHE_ENABLE=	mod_auth_bsd-enable
MODAPACHE_MODULE=	mod_auth_bsd.so

NO_TEST=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_bsd
	${INSTALL_DATA} ${WRKSRC}/INSTALL \
		${PREFIX}/share/doc/mod_auth_bsd/README
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
