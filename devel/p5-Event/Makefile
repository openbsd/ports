# $OpenBSD: Makefile,v 1.20 2014/06/14 23:24:56 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	event loop processing

MODULES=	cpan
DISTNAME=	Event-1.21
CATEGORIES=	devel
REVISION=	0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo
SRCDIR=			${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Event
	${INSTALL_DATA} ${WRKSRC}/Tutorial.pdf ${PREFIX}/share/doc/p5-Event
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/* ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
