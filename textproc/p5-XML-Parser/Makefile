# $OpenBSD: Makefile,v 1.15 2007/09/15 20:59:40 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	perl module for parsing XML documents

MODULES=	cpan
DISTNAME=	XML-Parser-2.34
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	expat
USE_X11=	Yes

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
