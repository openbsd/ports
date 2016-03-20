# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:56 naddy Exp $

COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
REVISION=	5

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt gcrypt gpg-error m perl pthread xml2 xslt z yaz

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan \
		devel/gettext

.include <bsd.port.mk>
