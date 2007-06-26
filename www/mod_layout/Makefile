# $OpenBSD: Makefile,v 1.5 2007/06/26 19:19:46 simon Exp $

COMMENT=	"Apache module for implementing a framework for doing design"

DISTNAME=	mod_layout-3.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://software.tangent.org/projects.pl?view=mod_layout
MASTER_SITES=	http://software.tangent.org/download/ \
		ftp://ftp.tangent.org/pub/apache/
MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	layout

NO_REGRESS=	Yes

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
