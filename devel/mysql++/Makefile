# $OpenBSD: Makefile,v 1.7 2001/10/25 22:34:49 wilfried Exp $

COMMENT=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		1.7.9
DISTNAME=		mysql++-${VERSION}
PKGNAME-docs=		mysql++-docs-${VERSION}
CATEGORIES=		devel
NEED_VERSION=		1.482

HOMEPAGE=		http://www.mysql.com/downloads/api-mysql++.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/mysql++/ \
			ftp://ftp.mysql.com/mysql++/

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=		mysqlclient.10:mysql-client-3.23.*:databases/mysql
.endif

NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/html
	${INSTALL_DATA} ${WRKSRC}/doc/man-html/* ${PREFIX}/share/doc/mysql++/html

.include <bsd.port.mk>
