# $OpenBSD: Makefile,v 1.13 2013/03/11 11:42:45 espie Exp $

COMMENT=	SAX2 driver directly based on expat

SHARED_ONLY=	Yes
MODULES=	cpan
DISTNAME=	XML-SAX-ExpatXS-1.32
REVISION=	0
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
