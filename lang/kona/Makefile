# $OpenBSD: Makefile,v 1.27 2020/02/25 02:30:48 bcallah Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20200224
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	f5ecd291f57dd10e1a685805d732b15bd8bf3a51

HOMEPAGE =	https://kona.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

USE_GMAKE =	Yes
ALL_TARGET =	k

TEST_TARGET =	k_test

post-test:
	cd ${WRKSRC} && echo '\\\\' | ./k_test

.include <bsd.port.mk>
