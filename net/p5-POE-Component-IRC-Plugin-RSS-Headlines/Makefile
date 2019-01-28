# $OpenBSD: Makefile,v 1.9 2019/01/28 15:08:58 cwen Exp $

COMMENT =		PoCo::IRC Plugin that provides RSS Headline retrieval

DISTNAME =		POE-Component-IRC-Plugin-RSS-Headlines-1.10
CATEGORIES =		net www

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# perl
PERMIT_PACKAGE_CDROM =	Yes

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
