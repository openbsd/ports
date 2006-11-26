# $OpenBSD: Makefile,v 1.24 2006/11/26 00:40:28 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		2.0.6
DISTNAME=		mysql++-${VERSION}
PKGNAME-main=		${DISTNAME}p3
PKGNAME-docs=		mysql++-docs-${VERSION}
SHARED_LIBS +=	mysqlpp              3.0      # .2.6
CATEGORIES=		devel

HOMEPAGE=		http://tangentsoft.net/mysql++/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MULTI_PACKAGES=		-main -docs

LIB_DEPENDS-main=	lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB-main=		crypto m ssl z
PKG_ARCH-docs=		*

NO_REGRESS=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-install:
.for dir in refman userman
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/${dir}/
	${INSTALL_DATA} ${WRKSRC}/doc/${dir}/html/* ${PREFIX}/share/doc/mysql++/${dir}/
.endfor

.include <bsd.port.mk>
