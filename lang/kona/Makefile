# $OpenBSD: Makefile,v 1.15 2018/12/26 16:13:06 bcallah Exp $

COMMENT =	open source implementation of the K programming language
DISTNAME =	kona-3.2.0.20181210
CATEGORIES =	lang

# No real releases... use GH_COMMIT.
GH_ACCOUNT =	kevinlawler
GH_PROJECT =	kona
GH_COMMIT =	8aa9673d8bd40007803ef6d9a30e4b7a9451ec22

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
