# $OpenBSD: Makefile,v 1.3 2018/01/19 03:23:44 bcallah Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20180105
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	4af897353460aca6b7486ea76d7fe988f1c815be

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
