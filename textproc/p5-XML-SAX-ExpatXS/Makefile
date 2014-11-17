# $OpenBSD: Makefile,v 1.15 2014/11/17 10:10:36 benoit Exp $

COMMENT=	SAX2 driver directly based on expat

SHARED_ONLY=	Yes
MODULES=	cpan
DISTNAME =	XML-SAX-ExpatXS-1.33
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-NamespaceSupport

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib \
		EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
