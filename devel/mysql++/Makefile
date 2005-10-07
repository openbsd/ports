# $OpenBSD: Makefile,v 1.19 2005/10/07 13:21:27 wilfried Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"C++ API for MySQL"
COMMENT-docs=		"C++ API for MySQL documentation"

VERSION=		2.0.6
DISTNAME=		mysql++-${VERSION}
PKGNAME=		${DISTNAME}
PKGNAME-docs=		mysql++-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://tangentsoft.net/mysql++/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

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
CONFIGURE_STYLE=	gnu

post-install:
.for dir in refman userman
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/${dir}/
	${INSTALL_DATA} ${WRKSRC}/doc/${dir}/html/* ${PREFIX}/share/doc/mysql++/${dir}/
.endfor

.include <bsd.port.mk>
