COMMENT=		bringing loggers and listeners together

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Log-Any-1.710
CATEGORIES=		devel

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	perl

pre-configure:
			@find ${WRKSRC} -name "*.orig" -delete

.include <bsd.port.mk>
