# $OpenBSD: Makefile,v 1.27 2016/11/07 15:14:24 bluhm Exp $

COMMENT =	perl framework for SIP

DISTNAME =	Net-SIP-0.691

CATEGORIES =	net telephony

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			net/p5-Net-DNS>=0.56

PKG_ARCH =		*

.include <bsd.port.mk>
