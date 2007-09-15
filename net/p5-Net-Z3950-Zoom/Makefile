# $OpenBSD: Makefile,v 1.2 2007/09/15 22:36:57 merdely Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.14

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
