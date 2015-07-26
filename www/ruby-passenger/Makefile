# $OpenBSD: Makefile,v 1.43 2015/07/26 01:31:39 jeremy Exp $

COMMENT =		ruby web application server/nginx module
BROKEN-alpha =		.got subsegment exceeds 64K (size 83312)
BROKEN-hppa =	rake fails when linking PassengerHelperAgent

PASS_VERSION =		5.0.14
NGINX_VERSION =		1.9.3
DISTNAME =		passenger-${PASS_VERSION}

CATEGORIES =	www
DISTFILES =	${DISTNAME}.gem \
		nginx-${NGINX_VERSION}.tar.gz:0
MASTER_SITES0 =	http://nginx.org/download/

HOMEPAGE =	https://www.phusionpassenger.com/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

MODULES =		devel/gettext \
			lang/ruby

SHARED_ONLY =	Yes

CONFIGURE_STYLE =	gem ext

WANTLIB =	${MODRUBY_WANTLIB} crypto curl idn kvm pcre pthread ssl stdc++ z

# Make devel/gmake a BUILD_DEPEND instead of USE_GMAKE, as the port
# also uses BSD make.
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gmake
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS} \
			devel/libidn \
			devel/pcre \
			net/curl

CONFIGURE_ENV +=	CC=${CC} CXX=${CXX} \
			PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0

PASS_DIR =		${GEM_BASE_LIB}/gems/${DISTNAME}

SUBST_VARS =		MODRUBY_FLAVOR NGINX_VERSION PASS_VERSION

pre-configure:
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT='${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}' \
		${WRKSRC}/ext/nginx/config \
		${WRKSRC}/lib/phusion_passenger.rb \
		${WRKSRC}/lib/phusion_passenger/platform_info/compiler.rb
	${MODRUBY_RUBY_ADJ} ${WRKSRC}/bin/passenger* \
		${WRKSRC}/dev/*.rb \
		${WRKSRC}/helper-scripts/p*

post-build:
	cd ${PASS_DIR} && ${RUBY} bin/passenger-config \
		install-standalone-runtime --auto \
		--nginx-version ${NGINX_VERSION} \
		--nginx-tarball ${FULLDISTDIR}/nginx-${NGINX_VERSION}.tar.gz
	cd ${PASS_DIR} && ${RUBY} bin/passenger-config build-native-support
	cd ${PASS_DIR} && ${RAKE} nginx CACHING=false
	rm -r ${PASS_DIR}/nginx-${NGINX_VERSION} \
		${PASS_DIR}/bin/passenger-install-*-module \
		${GEM_BASE_BIN}/passenger-install-*-module*
	mv ${PASS_DIR}/.passenger/support-binaries/${PASS_VERSION}/* \
		${PASS_DIR}/buildout/support-binaries/
	mv ${PASS_DIR}/buildout/ruby/ruby-*/*.so ${PASS_DIR}/buildout
	rm -r ${PASS_DIR}/buildout/ruby ${PASS_DIR}/.passenger
	ln -s buildout ${PASS_DIR}/.passenger
	find ${PASS_DIR} -name '*.beforesubst' -or -name '*.orig' | xargs rm

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv passenger-config.1 ${WRKINST}/${LOCALBASE}/man/man1/passenger-config${GEM_MAN_SUFFIX}.1 && \
		mv passenger-status.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-status${GEM_MAN_SUFFIX}.8 && \
		mv passenger-memory-stats.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-memory-stats${GEM_MAN_SUFFIX}.8
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_DATA} ${FILESDIR}/nginx-passenger.conf.sample ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT=${TRUEPREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX} \
		${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	rm ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample.*
	ln -s ${TRUEPREFIX}/${GEM_LIB}/gems/passenger-${PASS_VERSION} ${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}

.include <bsd.port.mk>
