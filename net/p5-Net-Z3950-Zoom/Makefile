# $OpenBSD: Makefile,v 1.3 2008/02/03 15:57:09 okan Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.21

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-MARC-Record
LIB_DEPENDS=	yaz::net/yaz

WANTLIB += crypto exslt gcrypt gpg-error iconv intl m pthread
WANTLIB += ssl xml2 xslt z

MODULES=	cpan

.include <bsd.port.mk>
