# $OpenBSD: Makefile,v 1.5 2011/04/14 17:15:15 jeremy Exp $

BROKEN-mips64el= hangs when compiling sqlite3.o

COMMENT =	ruby SQLite3 embedded database library

DISTNAME =	amalgalite-1.1.2
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
RUN_DEPENDS =		devel/ruby-arrayfields,${MODRUBY_FLAVOR}>=4.7.4,<4.8 \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR}>=1.5.4,<1.6

AMALGALITE_SO_DIR =	amalgalite/${MODRUBY_REV}
SUBST_VARS +=		AMALGALITE_SO_DIR

# distfile doesn't include configuration directory necessary for testing.
# Also requires RSpec2, no yet ported.
NO_REGRESS =		Yes
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS =	rspec
RSPEC_REGRESS_TARGET =	spec/*_spec.rb

.include <bsd.port.mk>
