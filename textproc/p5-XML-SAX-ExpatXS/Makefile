# $OpenBSD: Makefile,v 1.5 2008/10/02 15:39:12 jasper Exp $

COMMENT=	SAX2 driver directly based on expat

SHARED_ONLY=	Yes
MODULES=	cpan
DISTNAME=	XML-SAX-ExpatXS-1.31
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::textproc/p5-XML-NamespaceSupport

WANTLIB=	expat
USE_X11=	Yes

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib \
		EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
