# $OpenBSD: Makefile,v 1.81 2020/06/10 19:35:37 sebastia Exp $

ONLY_FOR_ARCHS =	${CLANG_ARCHS} ${LLVM_ARCHS}

# XXXTODO: Subpackage facter.jar for use with puppetserver
COMMENT =		collect and display system facts

VERSION =		3.14.11
DISTNAME =		facter-${VERSION}
SHARED_LIBS +=  	facter                    3.2 # 3.2
PKGSPEC =		facter->=3.0,<4.0
CATEGORIES =		sysutils

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://downloads.puppetlabs.com/facter/

MODULES +=		devel/cmake \
			lang/ruby

# Error with gcc-4.9:
# http://build-failures.rhaalovely.net//powerpc/2017-11-13/sysutils/facter.log
COMPILER =		base-clang ports-clang

WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto curl m pthread yaml-cpp
WANTLIB += ${COMPILER_LIBCXX} cpp-hocon
WANTLIB += leatherman_curl leatherman_dynamic_library
WANTLIB += leatherman_execution leatherman_file_util leatherman_locale
WANTLIB += leatherman_logging leatherman_ruby leatherman_util

LIB_DEPENDS =		devel/boost>=1.58 \
			devel/cpp-hocon \
			devel/leatherman>=0.12.1p1 \
			devel/yaml-cpp \
			net/curl

BUILD_DEPENDS =		devel/gettext,-tools

CONFIGURE_ARGS+=	-DFACTER_RUBY="${LOCALBASE}/lib/libruby${MODRUBY_BINREV}.so" \
			-DRUBY_LIB_INSTALL="${PREFIX}/lib/ruby/vendor_ruby/${MODRUBY_REV}" \
			-DWITHOUT_JRUBY:Bool=Yes

# NB:
# When/if SERVER-14 is resolved, drop the `-DWITHOUT_JRUBY:Bool=Yes`
# then use a pre-build target to run the ninja `facter-jruby` target
# to generate the JNI header file.

LIBfacter_MAJOR =	${LIBfacter_VERSION:R}
LIBfacter_MINOR =	${LIBfacter_VERSION:E}
SUBST_VARS +=		MODRUBY_BINREV MODRUBY_REV LIBfacter_MAJOR LIBfacter_MINOR

CXXFLAGS +=		-pthread

post-extract:
	rm -f ${WRKDIST}/cmake/FindRuby.cmake

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/lib/CMakeLists.txt \
		${WRKSRC}/lib/src/facts/posix/cache.cc

# Install symlinked libfacter.so so Ruby can load libfacter.so as it refuses
# to load with the version appended.
post-install:
	ln -s ./libfacter.so.${LIBfacter_VERSION} ${PREFIX}/lib/libfacter.so

.include <bsd.port.mk>
