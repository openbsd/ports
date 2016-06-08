# $OpenBSD: Makefile,v 1.3 2016/06/08 23:48:58 jturner Exp $

COMMENT =	perl5 extension for checking data against Spamhaus

DISTNAME =	Net-Abuse-Utils-Spamhaus-0.09
CATEGORIES =	net

MAINTAINER =	James Turner <james@calminferno.net>

# GPL/Artistic
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		net/p5-Net-DNS
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
