#	$OpenBSD: Makefile,v 1.12 2016/03/20 19:56:24 naddy Exp $

COMMENT=	object-oriented access to real and tied hashes

DISTNAME =	Hash-AutoHash-1.17
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Tie-Hash-MultiValue \
			devel/p5-Tie-ToObject
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Pod-Content

.include <bsd.port.mk>
