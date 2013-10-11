#	$OpenBSD: Makefile,v 1.9 2013/10/11 23:48:52 naddy Exp $

COMMENT=	object-oriented access to real and tied hashes

DISTNAME=	Hash-AutoHash-1.12
REVISION=	2
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Tie-Hash-MultiValue \
			devel/p5-Tie-ToObject
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
