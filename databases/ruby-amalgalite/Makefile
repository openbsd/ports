COMMENT =	ruby SQLite3 embedded database library

DISTNAME =	amalgalite-2.0.0
CATEGORIES =	databases

HOMEPAGE =	https://github.com/copiousfreetime/amalgalite

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext
.if ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS = --with-cflags="-O1"
.endif

AMALGALITE_SO_DIR =	amalgalite/${MODRUBY_REV}
SUBST_VARS +=		AMALGALITE_SO_DIR

.include <bsd.port.mk>
