# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:53 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
REVISION=	3

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt gcrypt gpg-error m pthread xml2 xslt z yaz

RUN_DEPENDS=	converters/p5-MARC-Record
LIB_DEPENDS=	net/yaz

MODULES=	cpan \
		devel/gettext
USE_GROFF =	Yes

.include <bsd.port.mk>
