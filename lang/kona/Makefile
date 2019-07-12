# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:19 sthen Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20190514
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	29222164ebc35b7c7c26baa0ac77df4e93b6e65c

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
