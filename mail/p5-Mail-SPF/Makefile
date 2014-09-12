# $OpenBSD: Makefile,v 1.4 2014/09/12 17:14:12 giovanni Exp $

COMMENT =		perl oop implementation of Sender Policy Framework

DISTNAME =		Mail-SPF-v2.9.0
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Error \
			net/p5-NetAddr-IP>=4 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Net-DNS-Resolver-Programmable \
			www/p5-URI
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =	mail/p5-Mail-SPF-Test

SUBST_VARS =		WRKINST

MAKE_ENV =		TEST_POD=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Build.PL

post-build:
	pod2man ${WRKSRC}/sbin/spfd >${WRKSRC}/blib/bindoc/spfd.1

do-install:
	cd ${WRKSRC} && ./Build --prefix=${PREFIX} --create_packlist=0 install

.include <bsd.port.mk>
