# $OpenBSD: Makefile,v 1.3 2002/05/13 18:50:39 espie Exp $

COMMENT=	"library for balanced binary trees"

VERSION=	1.4.0
DISTNAME=	avl-${VERSION}
PKGNAME=	libavl-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.454

HOMEPAGE=	http://www.msu.edu/user/pfaffben/avl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_GNU:=avl/}

CONFIGURE_STYLE= gnu

post-build:
	cd ${WRKBUILD} && makeinfo --html -o avl.html --ifinfo avl.texinfo

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libavl
	${INSTALL_DATA} ${WRKSRC}/avl.html ${PREFIX}/share/doc/libavl

.include <bsd.port.mk>
