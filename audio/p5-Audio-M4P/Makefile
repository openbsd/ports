# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:30 sthen Exp $

COMMENT=	M4P/MP4/M4a audio/video tools

DISTNAME =	Audio-M4P-0.57
CATEGORIES=	audio
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		security/p5-Crypt-Rijndael \
			devel/p5-Tree-Simple \
			devel/p5-Tree-Simple-View
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-Memory-Cycle

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
