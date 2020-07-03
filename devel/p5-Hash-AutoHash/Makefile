#	$OpenBSD: Makefile,v 1.14 2020/07/03 21:44:55 sthen Exp $

COMMENT=	object-oriented access to real and tied hashes

DISTNAME =	Hash-AutoHash-1.17
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Tie-Hash-MultiValue \
			devel/p5-Tie-ToObject
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Pod-Content

.include <bsd.port.mk>
