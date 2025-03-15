COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.30
REVISION=	1

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c execinfo exslt perl pthread xml2 xslt yaz

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan

.include <bsd.port.mk>
