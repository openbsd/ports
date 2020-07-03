# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:54 sthen Exp $

COMMENT=	access/create XML files/datas easily

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-Smart-1.79
CPAN_AUTHOR=	TMHARISH
CATEGORIES=	textproc
REVISION=	0

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Object-MultiType

MAKE_ENV+=	TEST_POD=1

TEST_DEPENDS=	devel/p5-Devel-Cycle

.include <bsd.port.mk>
