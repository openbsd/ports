# $OpenBSD: Makefile,v 1.6 2018/04/01 22:31:11 bcallah Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20180329
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	033fd124492448445fa0804edd0806ad5962b9f9

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
