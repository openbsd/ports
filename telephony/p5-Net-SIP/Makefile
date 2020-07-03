# $OpenBSD: Makefile,v 1.48 2020/07/03 21:45:44 sthen Exp $

COMMENT =	perl framework for SIP

DISTNAME =	Net-SIP-0.822
REVISION =	0

CATEGORIES =	net telephony

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			net/p5-Net-DNS>=0.56 \
			security/p5-IO-Socket-SSL>=1.956

PKG_ARCH =		*

.include <bsd.port.mk>
