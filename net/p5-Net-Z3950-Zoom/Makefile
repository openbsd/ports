# $OpenBSD: Makefile,v 1.21 2016/11/08 14:47:22 sthen Exp $

COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
REVISION=	6

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt gcrypt gpg-error lzma m perl pthread xml2 xslt yaz z

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan \
		devel/gettext

.include <bsd.port.mk>
