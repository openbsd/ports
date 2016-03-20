# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:23 naddy Exp $

COMMENT =		checks intelligently if files have changed

DISTNAME =		File-Modified-0.10

CATEGORIES =		devel

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		security/p5-Digest-MD2 \
			security/p5-Digest-SHA1

.include <bsd.port.mk>
