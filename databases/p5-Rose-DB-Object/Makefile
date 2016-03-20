# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:11 naddy Exp $

COMMENT=	object-oriented database mapper

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Rose-DB-Object-0.815
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Rose-DB>=0.737 \
		databases/p5-Rose-Object>=0.83 \
		devel/p5-Clone \
		devel/p5-List-MoreUtils

TEST_DEPENDS=	textproc/p5-Lingua-EN-Inflect

MAKE_ENV +=	TEST_POD=1

TEST_FLAGS +=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
