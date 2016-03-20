# $OpenBSD: Makefile,v 1.18 2016/03/20 19:57:12 naddy Exp $

COMMENT=	SAX2 driver directly based on expat

MODULES=	cpan
DISTNAME =	XML-SAX-ExpatXS-1.33
CATEGORIES=	textproc
REVISION =	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat perl

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-NamespaceSupport

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib \
		EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
