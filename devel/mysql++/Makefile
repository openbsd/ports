# $OpenBSD: Makefile,v 1.5 2001/08/23 19:05:36 brad Exp $

COMMENT=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		1.7.9
DISTNAME=		mysql++-${VERSION}
PKGNAME-docs=		mysql++-docs-${VERSION}
CATEGORIES=		devel
NEED_VERSION=		1.435

HOMEPAGE=		http://www.mysql.com/downloads/api-mysql++.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/mysql++/ \
			ftp://ftp.mysql.com/mysql++/

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=		mysqlclient.10:mysql-client-3.23.*:databases/mysql
.endif

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/html
	${INSTALL_DATA} ${WRKSRC}/doc/man-html/* ${PREFIX}/share/doc/mysql++/html

.include <bsd.port.mk>
