# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:54 sthen Exp $

COMMENT=	SAX2 driver directly based on expat

MODULES=	cpan
DISTNAME =	XML-SAX-ExpatXS-1.33
CATEGORIES=	textproc
REVISION =	1

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c expat perl

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-NamespaceSupport

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib \
		EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
