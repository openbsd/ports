# $OpenBSD: Makefile,v 1.6 2011/04/13 17:51:44 jasper Exp $

COMMENT=	M4P/MP4/M4a audio/video tools

DISTNAME=	Audio-M4P-0.51
REVISION=	0
CATEGORIES=	audio

MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		security/p5-Crypt-Rijndael \
			devel/p5-Tree-Simple \
			devel/p5-Tree-Simple-View
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	devel/p5-Test-Memory-Cycle

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
