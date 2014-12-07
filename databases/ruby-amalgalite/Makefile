# $OpenBSD: Makefile,v 1.18 2014/12/07 21:34:08 jeremy Exp $

COMMENT =	ruby SQLite3 embedded database library

DISTNAME =	amalgalite-1.3.0
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
RUN_DEPENDS =		devel/ruby-arrayfields,${MODRUBY_FLAVOR}>=4.7.4,<4.8

AMALGALITE_SO_DIR =	amalgalite/${MODRUBY_REV}
SUBST_VARS +=		AMALGALITE_SO_DIR

# distfile doesn't include configuration directory necessary for testing.
#TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
#MODRUBY_TEST =	rspec2
#MODRUBY_TEST_TARGET =	spec/*_spec.rb

.include <bsd.port.mk>
