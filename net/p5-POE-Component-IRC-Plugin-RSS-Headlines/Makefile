# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:37 sthen Exp $

COMMENT =		PoCo::IRC Plugin that provides RSS Headline retrieval

DISTNAME =		POE-Component-IRC-Plugin-RSS-Headlines-1.10
CATEGORIES =		net www
REVISION =		1

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	net/p5-POE-Component-IRC \
		net/p5-POE-Component-Client-HTTP>=0.73 \
		textproc/p5-XML-RSS>1.1

TEST_DEPENDS =	net/p5-POE-Component-Resolver \
		net/p5-Net-IP-Minimal

MAKE_ENV+=	TEST_POD=Yes
# It requires Pod::Coverage::TrustPod that we don't ship atm.
TEST_ENV=	AUTHOR_TESTING=0

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
