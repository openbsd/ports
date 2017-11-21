# $OpenBSD: Makefile,v 1.22 2017/11/21 00:13:02 naddy Exp $

COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
REVISION=	7

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c exslt gcrypt gpg-error iconv intl lzma m perl pthread xml2
WANTLIB += xslt yaz z

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan

.include <bsd.port.mk>
