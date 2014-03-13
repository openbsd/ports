# $OpenBSD: Makefile,v 1.14 2014/03/13 17:33:27 sthen Exp $

COMMENT=	Apache module for implementing a framework for doing design

REVISION=	4
DISTNAME=	mod_layout-3.4
PKGNAME=	${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://tangent.org/
MASTER_SITES=	http://download.tangent.org/
MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	layout

NO_TEST=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_layout
	${INSTALL_DATA} ${WRKSRC}/faq.html ${PREFIX}/share/doc/mod_layout
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_layout/directives
	${INSTALL_DATA} ${WRKSRC}/directives/* \
		${PREFIX}/share/doc/mod_layout/directives
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
