# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:54 sthen Exp $

COMMENT =		checks intelligently if files have changed

DISTNAME =		File-Modified-0.10

CATEGORIES =		devel

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		security/p5-Digest-MD2 \
			security/p5-Digest-SHA1

.include <bsd.port.mk>
