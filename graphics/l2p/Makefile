# $OpenBSD: Makefile,v 1.1.1.1 2006/12/17 15:01:57 jasper Exp $

COMMENT=		"create PNG images of LaTex math expressions"

DISTNAME=		l2p-1.0
CATEGORIES=		graphics

HOMEPAGE=		http://redsymbol.net/software/l2p/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}dist/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/${PKGNAME}

RUN_DEPENDS=		::graphics/ImageMagick \
			::print/teTeX/base

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/l2p ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/l2p
	${INSTALL_DATA} ${WRKSRC}/l2p.txt ${PREFIX}/share/doc/l2p/README

.include <bsd.port.mk>
