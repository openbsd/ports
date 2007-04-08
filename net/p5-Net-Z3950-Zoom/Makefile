# $OpenBSD: Makefile,v 1.1.1.1 2007/04/08 22:07:15 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	'perl interface to yaz zoom'
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
