# $OpenBSD: Makefile,v 1.14 2015/01/21 14:05:46 sthen Exp $

COMMENT=	object-oriented database mapper

MODULES=	cpan

DISTNAME=	Rose-DB-Object-0.784
REVISION=	1
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Rose-DB>=0.737 \
		databases/p5-Rose-Object>=0.83 \
		devel/p5-Clone \
		devel/p5-List-MoreUtils

TEST_DEPENDS=textproc/p5-Lingua-EN-Inflect \
		devel/p5-Test-Pod

TEST_FLAGS += AUTOMATED_TESTING=1
.include <bsd.port.mk>
