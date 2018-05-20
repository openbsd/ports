# $OpenBSD: Makefile,v 1.11 2018/05/20 03:27:23 bcallah Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20180517
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	56dc5e0797f7e2e058655f6bff6b2dbfcb3060bf

HOMEPAGE =	https://kona.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

USE_GMAKE =	Yes
ALL_TARGET =	k

TEST_TARGET =	k_test

post-test:
	cd ${WRKSRC} && echo '\\\\' | ./k_test

.include <bsd.port.mk>
