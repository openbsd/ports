# $OpenBSD: Makefile,v 1.6 2017/02/27 19:53:23 jca Exp $

COMMENT =		number theoretic multiple-precision integer library
CATEGORIES =		math
HOMEPAGE =		http://libtom.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

GH_ACCOUNT =		libtom
GH_PROJECT =		libtommath
GH_TAGNAME =		v1.0

# WTFPL
PERMIT_PACKAGE_CDROM =	Yes

MAKE_FLAGS =		CC="${CC}" \
			IGNORE_SPEED=Yes \
			V=1 \
			PREFIX=
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX} \
			LIBPATH=/lib \
			INCPATH=/include
USE_GMAKE =		Yes
MAKE_FILE =		makefile

ALL_TARGET =		default
TEST_TARGET =		coverage

CFLAGS +=		-fPIC

.include <bsd.port.mk>
