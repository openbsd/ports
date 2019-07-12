# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:35 sthen Exp $

COMMENT =		perl oop implementation of Sender Policy Framework

DISTNAME =		Mail-SPF-v2.9.0
PKGNAME =		p5-${DISTNAME:S/-v/-/}
REVISION =		0
CATEGORIES =		mail

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_STYLE =	modbuild

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
	pod2man ${WRKSRC}/sbin/spfd > ${WRKSRC}/blib/bindoc/spfd.1

.include <bsd.port.mk>
