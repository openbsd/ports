# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:37 sthen Exp $

COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
REVISION=	8

# perl
PERMIT_PACKAGE=	Yes

WANTLIB =  c exslt gcrypt gpg-error iconv intl lzma m perl pthread xml2
WANTLIB += xslt yaz z

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan

.include <bsd.port.mk>
