# $OpenBSD: Makefile,v 1.3 2001/03/03 04:04:30 kevlo Exp $

DISTNAME=	doc++-3.4.7
CATEGORIES=	devel
NEED_VERSION=	1.341

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/doctools

RUN_DEPENDS=	gs::print/ghostscript/gnu \
		tex::print/teTeX/base

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--prefix=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++

.include <bsd.port.mk>
