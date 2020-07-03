# $OpenBSD: Makefile,v 1.29 2020/07/03 21:44:51 sthen Exp $

COMMENT=	event loop processing

MODULES=	cpan
DISTNAME=	Event-1.27
REVISION =	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo
SRCDIR=			${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Event
	${INSTALL_DATA} ${WRKSRC}/Tutorial.pdf ${PREFIX}/share/doc/p5-Event
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/* ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
