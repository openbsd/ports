# $OpenBSD: Makefile,v 1.3 2015/07/13 19:28:51 jasper Exp $

COMMENT =		collect and display system facts

DISTNAME =		facter-3.0.1
REVISION =		1
# XXX: Uses upstream versioning as it's also exported as a fact
SHARED_LIBS +=  	facter                    3.0 # 3.0
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
MODRUBY_REV =		1.9

WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_log boost_log-mt boost_log_setup-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += m pthread yaml-cpp

LIB_DEPENDS =		devel/boost>=1.58 \
			devel/yaml-cpp

CONFIGURE_ARGS+=	-DWITHOUT_JRUBY:Bool=Yes

SUBST_VARS +=		MODRUBY_BINREV

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/src/ruby/api.cc ${WRKSRC}/lib/CMakeLists.txt

.include <bsd.port.mk>

# Drop build-time from 8 minutes to 6 seconds for a primed-build
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
CONFIGURE_ENV +=	CXX="ccache eg++"
.endif
