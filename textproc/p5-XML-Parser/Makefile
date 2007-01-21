# $OpenBSD: Makefile,v 1.12 2007/01/21 21:46:21 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl module for parsing XML documents"

MODULES=	cpan
DISTNAME=	XML-Parser-2.34
CATEGORIES=	textproc

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	expat.>=2::textproc/expat

CONFIGURE_ARGS=	EXPATLIBPATH=${LOCALBASE}/lib EXPATINCPATH=${LOCALBASE}/include

.include <bsd.port.mk>
