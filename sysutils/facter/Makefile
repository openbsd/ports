# $OpenBSD: Makefile,v 1.28 2016/05/31 14:09:55 jasper Exp $

# XXXTODO: Subpackage facter.jar for use with puppetserver
COMMENT =		collect and display system facts

DISTNAME =		facter-3.1.7
REVISION =		0
SHARED_LIBS +=  	facter                    3.0 # 3.2
PKGSPEC =		facter->=3.0,<4.0
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://downloads.puppetlabs.com/facter/

MODULES +=		devel/cmake \
			lang/ruby \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto curl m pthread yaml-cpp

LIB_DEPENDS =		devel/boost>=1.58 \
			devel/yaml-cpp \
			net/curl

BUILD_DEPENDS =		devel/leatherman

CONFIGURE_ARGS+=	-DFACTER_RUBY="${LOCALBASE}/lib/libruby${MODRUBY_BINREV}.so" \
			-DRUBY_LIB_INSTALL="${PREFIX}/lib/ruby/vendor_ruby/${MODRUBY_REV}" \
			-DWITHOUT_JRUBY:Bool=Yes

LIBfacter_MAJOR =	${LIBfacter_VERSION:R}
LIBfacter_MINOR =	${LIBfacter_VERSION:E}
SUBST_VARS +=		MODRUBY_BINREV MODRUBY_REV LIBfacter_MAJOR LIBfacter_MINOR

CXXFLAGS +=		-pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/lib/CMakeLists.txt

# Install symlinked libfacter.so so Ruby can load libfacter.so as it refuses
# to load with the version appended.
post-install:
	ln -s ./libfacter.so.${LIBfacter_VERSION} ${PREFIX}/lib/libfacter.so

.include <bsd.port.mk>

# Drop build-time from 8 minutes to 6 seconds for a primed-build
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
CONFIGURE_ENV +=	CXX="ccache eg++"
.endif
