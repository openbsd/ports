# $OpenBSD: Makefile,v 1.50 2021/11/02 04:08:00 gnezdo Exp $

COMMENT =	liberalised reimplementation of cpp in Haskell

MODCABAL_STEM =		cpphs
MODCABAL_VERSION =	1.20.9.1
MODCABAL_MANIFEST =	polyparse 1.13 2
REVISION =		0
CATEGORIES =		devel
MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE =	Yes

MODULES =		devel/cabal

WANTLIB =		c charset ffi gmp m iconv pthread util

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

post-install:
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
