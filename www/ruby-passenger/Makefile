# $OpenBSD: Makefile,v 1.67 2020/03/20 16:44:28 naddy Exp $

COMMENT =		ruby web application server/nginx module
BROKEN-alpha =		.got subsegment exceeds 64K (size 83312)
BROKEN-hppa =		rake fails when linking PassengerHelperAgent

PASS_VERSION =		6.0.4
NGINX_VERSION =		1.16.1
DISTNAME =		passenger-${PASS_VERSION}

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386

CATEGORIES =	www
DISTFILES =	${DISTNAME}.gem \
		nginx-${NGINX_VERSION}.tar.gz:0
MASTER_SITES0 =	https://nginx.org/download/

HOMEPAGE =	https://www.phusionpassenger.com/

# GPLv2
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

WANTLIB =	${MODRUBY_WANTLIB} crypto curl kvm nghttp2 pcre pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

# Make devel/gmake a BUILD_DEPEND instead of USE_GMAKE, as the port also uses
# BSD make. Depend on gsed as embedded libuv picks it up if present.
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gmake \
			textproc/gsed
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS} \
			devel/pcre \
			net/curl

CONFIGURE_ENV +=	CC=${CC} CXX=${CXX} \
			PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0

PASS_DIR =		${GEM_BASE_LIB}/gems/${DISTNAME}

SUBST_VARS =		MODRUBY_FLAVOR NGINX_VERSION PASS_VERSION

pre-configure:
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT='${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}' \
		${WRKSRC}/src/agent/Core/AdminPanelConnector.h \
		${WRKSRC}/src/agent/Core/ApplicationPool/Options.h \
		${WRKSRC}/src/agent/Core/SpawningKit/Factory.h \
		${WRKSRC}/src/nginx_module/config \
		${WRKSRC}/src/ruby_supportlib/phusion_passenger.rb \
		${WRKSRC}/src/ruby_supportlib/phusion_passenger/constants.rb \
		${WRKSRC}/src/ruby_supportlib/phusion_passenger/platform_info/compiler.rb \
		${WRKSRC}/src/cxx_supportlib/Constants.h
	${MODRUBY_RUBY_ADJ} ${WRKSRC}/bin/passenger* \
		${WRKSRC}/dev/*.rb \
		${WRKSRC}/src/helper-scripts/p* \
		${WRKSRC}/src/helper-scripts/*.rb

post-build:
	cd ${PASS_DIR} && ${RUBY} bin/passenger-config \
		install-standalone-runtime --auto \
		--nginx-version ${NGINX_VERSION} \
		--nginx-tarball ${FULLDISTDIR}/nginx-${NGINX_VERSION}.tar.gz
	cd ${PASS_DIR} && ${RUBY} bin/passenger-config build-native-support
	cd ${PASS_DIR} && ${RAKE} nginx:as_dynamic_module 
	rm -r ${PASS_DIR}/nginx-${NGINX_VERSION} \
		${PASS_DIR}/bin/passenger-install-*-module \
		${GEM_BASE_BIN}/passenger-install-*-module*
	mv ${PASS_DIR}/src/.passenger/support-binaries/${PASS_VERSION}/* \
		${PASS_DIR}/buildout/support-binaries/
	mv ${PASS_DIR}/buildout/ruby/openbsd/*.so ${PASS_DIR}/buildout/
	rm -r ${PASS_DIR}/buildout/ruby/
	find ${PASS_DIR} \( -name '*.beforesubst' -o -name '*.orig' \) -delete

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv passenger-config.1 ${WRKINST}/${LOCALBASE}/man/man1/passenger-config${GEM_MAN_SUFFIX}.1 && \
		mv passenger-status.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-status${GEM_MAN_SUFFIX}.8 && \
		mv passenger-memory-stats.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-memory-stats${GEM_MAN_SUFFIX}.8
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/{man,src/apache2_module}
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_DATA} ${FILESDIR}/nginx-passenger.conf.sample ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT=${TRUEPREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX} \
		${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	rm ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample.*
	ln -s ${TRUEPREFIX}/${GEM_LIB}/gems/passenger-${PASS_VERSION} ${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}

.include <bsd.port.mk>
