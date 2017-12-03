# $OpenBSD: Makefile,v 1.10 2017/12/03 16:41:43 espie Exp $

COMMENT=	M4P/MP4/M4a audio/video tools

DISTNAME =	Audio-M4P-0.57
CATEGORIES=	audio
FIX_EXTRACT_PERMISSIONS=Yes

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		security/p5-Crypt-Rijndael \
			devel/p5-Tree-Simple \
			devel/p5-Tree-Simple-View
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-Memory-Cycle

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
