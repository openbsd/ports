# $OpenBSD: Makefile,v 1.13 2016/03/28 14:49:52 okan Exp $

COMMENT=	access/create XML files/datas easily

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-Smart-1.79
CPAN_AUTHOR=	TMHARISH
CATEGORIES=	textproc

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Object-MultiType

MAKE_ENV+=	TEST_POD=1

TEST_DEPENDS=	devel/p5-Devel-Cycle

.include <bsd.port.mk>
