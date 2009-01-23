# $OpenBSD: Makefile,v 1.7 2009/01/23 13:27:50 jasper Exp $

COMMENT=		create PNG images from LaTeX expressions

DISTNAME=		l2p-1.1.1
CATEGORIES=		graphics print

HOMEPAGE=		http://redsymbol.net/software/l2p/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://redsymbol.net/media/software/l2p/dist/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		::graphics/ImageMagick \
			::print/texlive/base

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	pod2man ${WRKSRC}/l2p ${WRKSRC}/l2p.1
	${INSTALL_SCRIPT} ${WRKSRC}/l2p ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2p.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
