# $OpenBSD: Makefile,v 1.13 2007/04/27 18:43:56 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl module for parsing XML documents"

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

CONFIGURE_ARGS=	EXPATLIBPATH=${X11BASE}/lib EXPATINCPATH=${X11BASE}/include

.include <bsd.port.mk>
