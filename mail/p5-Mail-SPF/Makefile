COMMENT =		perl oop implementation of Sender Policy Framework

DISTNAME =		Mail-SPF-3.20240617
CATEGORIES =		mail

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Error \
			net/p5-NetAddr-IP>=4 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Net-DNS-Resolver-Programmable \
			www/p5-URI
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		mail/p5-Mail-SPF-Test

MAKE_ENV =		TEST_POD=Yes
CONFIGURE_ARGS =	install_path=sbin="${PREFIX}/sbin"

post-build:
	find ${WRKBUILD}/blib -type f -name '*.orig.port' -delete

.include <bsd.port.mk>
