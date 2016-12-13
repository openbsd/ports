# $OpenBSD: Makefile,v 1.36 2016/12/13 22:29:00 bluhm Exp $

COMMENT =	perl framework for SIP

DISTNAME =	Net-SIP-0.808

CATEGORIES =	net telephony

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			net/p5-Net-DNS>=0.56 \
			security/p5-IO-Socket-SSL>=1.956

PKG_ARCH =		*

.include <bsd.port.mk>
