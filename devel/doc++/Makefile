# $OpenBSD: Makefile,v 1.1.1.1 2000/12/07 14:33:23 kevlo Exp $

DISTNAME=	doc++-3.4.6
CATEGORIES=	devel
NEED_VERSION=	1.341

HOMEPAGE=	http://www.linuxsupportline.com/~doc++/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} 

RUN_DEPENDS=	tex::print/teTeX/base

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--prefix=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++

.include <bsd.port.mk>
