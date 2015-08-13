# $OpenBSD: Makefile,v 1.21 2015/08/13 19:53:36 jasper Exp $

COMMENT =		collect and display system facts

DISTNAME =		facter-3.0.2
REVISION =		1
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

WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_log boost_log-mt boost_log_setup-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += m pthread yaml-cpp

LIB_DEPENDS =		devel/boost>=1.58 \
			devel/yaml-cpp

CONFIGURE_ARGS+=	-DWITHOUT_JRUBY:Bool=Yes \
			-DFACTER_RUBY="${LOCALBASE}/lib/libruby${MODRUBY_BINREV}.so" \
			-DRUBY_LIB_INSTALL="${PREFIX}/lib/ruby/vendor_ruby/${MODRUBY_REV}"

SUBST_VARS +=		MODRUBY_BINREV MODRUBY_REV

# XXX: Remove on upgrade
# https://github.com/puppetlabs/facter/pull/1041 (networking: merged)
# https://github.com/puppetlabs/facter/pull/1061 (dmi: merged)
# https://github.com/puppetlabs/facter/pull/1073 (processor: merged)
# https://github.com/puppetlabs/facter/pull/1074 (memory: merged)
# https://github.com/puppetlabs/facter/pull/1075 (virtualization: merged)
post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/lib/inc/internal/facts/openbsd/
	${INSTALL_DATA_DIR} ${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/networking_resolver.hpp \
		${WRKSRC}/lib/inc/internal/facts/openbsd/
	cp ${FILESDIR}/networking_resolver.cc \
		${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/processor_resolver.hpp \
		${WRKSRC}/lib/inc/internal/facts/openbsd/
	cp ${FILESDIR}/processor_resolver.cc \
		${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/memory_resolver.hpp \
		${WRKSRC}/lib/inc/internal/facts/openbsd/
	cp ${FILESDIR}/memory_resolver.cc \
		${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/dmi_resolver.hpp \
		${WRKSRC}/lib/inc/internal/facts/openbsd/
	cp ${FILESDIR}/dmi_resolver.cc \
		${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/virtualization_resolver.hpp \
		${WRKSRC}/lib/inc/internal/facts/openbsd/
	cp ${FILESDIR}/virtualization_resolver.cc \
		${WRKSRC}/lib/src/facts/openbsd/
	cp ${FILESDIR}/collection.cc \
		${WRKSRC}/lib/src/facts/openbsd/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

# Install symlinked libfacter.so so Ruby can load libfacter.so as it refuses
# to load with the version appended.
post-install:
	ln -s ${PREFIX}/lib/libfacter.so.* ${PREFIX}/lib/libfacter.so

.include <bsd.port.mk>

# Drop build-time from 8 minutes to 6 seconds for a primed-build
.if ${USE_CCACHE:L} == "yes" && ${NO_CCACHE:L} == "no"
CONFIGURE_ENV +=	CXX="ccache eg++"
.endif
