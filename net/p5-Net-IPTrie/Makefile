# $OpenBSD: Makefile,v 1.9 2018/08/10 11:08:48 bluhm Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=       Net-IPTrie-0.7
REVISION=	1
CATEGORIES=	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		net/p5-NetAddr-IP>=4.007

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
