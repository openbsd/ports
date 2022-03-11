COMMENT = 	object for running system commands

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	System-Command-1.121
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-IPC-Run

TEST_DEPENDS =	devel/p5-Test-Command \
		devel/p5-Test-Output \
		devel/p5-Test-CPAN-Meta

# Requires Pod::Coverage::TrustPod that we don't have in ports
MAKE_ENV +=	TEST_POD= AUTHOR_TESTING=

.include <bsd.port.mk>
