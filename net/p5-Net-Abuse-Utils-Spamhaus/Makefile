# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:51 naddy Exp $

COMMENT =	perl5 extension for checking data against Spamhaus

DISTNAME =	Net-Abuse-Utils-Spamhaus-0.07
CATEGORIES =	net

MAINTAINER =	James Turner <james@calminferno.net>

# GPL/Artistic
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		net/p5-Net-DNS
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
