COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	GnuPG-Interface-1.04
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		devel/p5-MooX-HandlesVia \
		devel/p5-MooX-late \
		devel/p5-Type-Tiny \
		security/gnupg
TEST_DEPENDS =	devel/p5-List-MoreUtils

.include <bsd.port.mk>
