# $OpenBSD: Makefile,v 1.17 2005/02/25 23:37:38 alek Exp $

COMMENT=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		1.7.9
DISTNAME=		mysql++-${VERSION}
PKGNAME-docs=		mysql++-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.mysql.com/downloads/api-mysql++.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/mysql++/ \
			ftp://ftp.mysql.com/mysql++/

PATCH_LIST=		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
			${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
			patch-*

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=		lib/mysql/mysqlclient.10::databases/mysql
WANTLIB=		z
.endif
.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.endif

NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/mysql++

post-extract:
	@rm -rf ${WRKSRC}/sqlplusint/.deps

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/html
	${INSTALL_DATA} ${WRKSRC}/doc/man-html/* ${PREFIX}/share/doc/mysql++/html

.include <bsd.port.mk>
