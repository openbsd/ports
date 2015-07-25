# $OpenBSD: Makefile,v 1.19 2015/07/25 23:20:46 jeremy Exp $

COMMENT =	ruby SQLite3 embedded database library

DISTNAME =	amalgalite-1.4.0
CATEGORIES =	databases

HOMEPAGE =	http://copiousfreetime.rubyforge.org/amalgalite/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext
.if ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS = --with-cflags="-O1"
.endif

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-arrayfields,${MODRUBY_FLAVOR}>=4.9,<5.0

AMALGALITE_SO_DIR =	amalgalite/${MODRUBY_REV}
SUBST_VARS +=		AMALGALITE_SO_DIR

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	rspec3
MODRUBY_TEST_TARGET =	spec
MODRUBY_TEST_ENV =	LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

.include <bsd.port.mk>
