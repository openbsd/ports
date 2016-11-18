# $OpenBSD: Makefile,v 1.29 2016/11/18 14:48:37 bluhm Exp $

COMMENT =	perl framework for SIP

DISTNAME =	Net-SIP-0.702

CATEGORIES =	net telephony

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			net/p5-Net-DNS>=0.56

PKG_ARCH =		*

.include <bsd.port.mk>
