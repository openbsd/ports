# $OpenBSD: Makefile,v 1.3 2011/01/03 22:23:06 jasper Exp $

BROKEN-mips64el= hangs when compiling sqlite3.o

COMMENT =	ruby SQLite3 embedded database library

DISTNAME =	amalgalite-0.15.0
CATEGORIES =	databases

HOMEPAGE =	http://copiousfreetime.rubyforge.org/amalgalite/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-arrayfields,${MODRUBY_FLAVOR} \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR}>=1.5.3

AMALGALITE_SO_DIR =	amalgalite/${MODRUBY_REV}
SUBST_VARS +=		AMALGALITE_SO_DIR

# Doesn't work, needs configuration dependency
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS =	rspec
RSPEC_REGRESS_TARGET =	spec/*_spec.rb

.include <bsd.port.mk>
