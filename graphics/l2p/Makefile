# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:01 sthen Exp $

COMMENT=		create PNG images from LaTeX expressions

DISTNAME=		l2p-1.1.1
CATEGORIES=		graphics print
REVISION=		0

HOMEPAGE=		http://redsymbol.net/software/l2p/

# Public Domain
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://static.redsymbol.net/software/l2p/dist/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		graphics/ImageMagick \
			print/texlive/base

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	pod2man ${WRKSRC}/l2p ${WRKSRC}/l2p.1
	${INSTALL_SCRIPT} ${WRKSRC}/l2p ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2p.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
