# $OpenBSD: Makefile,v 1.10 2002/05/15 09:30:21 wilfried Exp $

COMMENT=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		1.7.9
DISTNAME=		mysql++-${VERSION}
PKGNAME-docs=		mysql++-docs-${VERSION}
CATEGORIES=		devel
NEED_VERSION=		1.482

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
LIB_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
.endif

NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/html
	${INSTALL_DATA} ${WRKSRC}/doc/man-html/* ${PREFIX}/share/doc/mysql++/html

.include <bsd.port.mk>
