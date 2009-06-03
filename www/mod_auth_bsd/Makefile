# $OpenBSD: Makefile,v 1.9 2009/06/03 00:48:51 pyr Exp $

COMMENT=	provides HTTP Basic authentication via bsd auth

VERSION=	0.8.2
DISTNAME=	bsdauth-${VERSION}
PKGNAME=	mod_auth_bsd-${VERSION}p2
EXTRACT_SUFX=	.tgz
CATEGORIES=	www
MASTER_SITES=	http://www.25thandclement.com/~william/projects/releases/

HOMEPAGE=	http://www.25thandclement.com/~william/projects/bsdauth.html

MODULES+=	apache-module

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		event

MODAPACHE_NAME=		bsd_auth
MODAPACHE_ENABLE=	mod_auth_bsd-enable
MODAPACHE_MODULE=	mod_auth_bsd.so

NO_REGRESS=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_bsd
	${INSTALL_DATA} ${WRKSRC}/INSTALL \
		${PREFIX}/share/doc/mod_auth_bsd/README
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
