COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GnuPG-Interface-1.02
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		devel/p5-MooX-HandlesVia \
		devel/p5-MooX-late \
		devel/p5-Type-Tiny \
		security/gnupg

.include <bsd.port.mk>
