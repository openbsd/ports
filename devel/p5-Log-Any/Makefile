COMMENT =	bringing loggers and listeners together

DISTNAME =	Log-Any-1.717

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Devel-StackTrace>=2.00 \
			devel/p5-Moose \
			devel/p5-Throwable \
			www/p5-Mojo

PKG_ARCH =		*

pre-configure:
			find ${WRKSRC} -name "*${PATCHORIG}" -delete

.include <bsd.port.mk>
