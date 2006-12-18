# $OpenBSD: Makefile,v 1.2 2006/12/18 21:26:26 steven Exp $

COMMENT=		"create PNG images from LaTeX expressions"

DISTNAME=		l2p-1.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		graphics print

HOMEPAGE=		http://redsymbol.net/software/l2p/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}dist/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		::graphics/ImageMagick \
			::print/teTeX/base

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	pod2man ${WRKSRC}/l2p ${WRKSRC}/l2p.1
	${INSTALL_SCRIPT} ${WRKSRC}/l2p ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2p.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
