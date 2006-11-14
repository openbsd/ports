# $OpenBSD: Makefile,v 1.1.1.1 2006/11/14 19:09:21 espie Exp $

COMMENT=	"SAX2 driver directly based on expat"

SHARED_ONLY=	Yes
MODULES=	cpan
DISTNAME=	XML-SAX-ExpatXS-1.20
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::textproc/p5-XML-NamespaceSupport

LIB_DEPENDS=	expat.>=6:expat->=2:textproc/expat
CONFIGURE_ARGS=	EXPATLIBPATH=${LOCALBASE}/lib \
		EXPATINCPATH=${LOCALBASE}/include

.include <bsd.port.mk>
