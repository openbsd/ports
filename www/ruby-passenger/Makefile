# $OpenBSD: Makefile,v 1.33 2014/06/24 21:43:02 jeremy Exp $

COMMENT-main =		Nginx module for deploying ruby applications
COMMENT-standalone =	ruby web application server

PASS_VERSION =		4.0.44
NGINX_VERSION =		1.4.7
DISTNAME =		passenger-${PASS_VERSION}
FULLPKGNAME-main =	${MODRUBY_PKG_PREFIX}-${DISTNAME}
FULLPKGNAME-standalone = ${MODRUBY_PKG_PREFIX}-passenger-standalone-${PASS_VERSION}.${NGINX_VERSION}
FULLPKGPATH-main =	${BASE_PKGPATH},-main
FULLPKGPATH-standalone = ${BASE_PKGPATH},-standalone

CATEGORIES =	www
DISTFILES =	${DISTNAME}.gem \
		nginx-${NGINX_VERSION}.tar.gz:0
MASTER_SITES0 =	http://nginx.org/download/

HOMEPAGE =	http://www.modrails.com/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

MULTI_PACKAGES =	-main -standalone


MODULES =		devel/gettext \
			lang/ruby

FLAVORS =		ruby18 ruby19 ruby20 ruby21
FLAVOR ?=		ruby20

# Fix conflict between subpackages when using ruby21 FLAVOR
.if ${FLAVOR} == ruby21
PKG_ARGS-standalone =	
.endif

SHARED_ONLY-main =	Yes
SHARED_ONLY-standalone =	Yes

CONFIGURE_STYLE =	gem ext

WANTLIB-main =	c crypto curl ev idn m pcre pthread stdc++ ssl z \
		${MODRUBY_WANTLIB}
WANTLIB-standalone =	c crypto curl ev idn m pcre pthread ssl stdc++ z

# Make devel/gmake a BUILD_DEPEND instead of USE_GMAKE, as the port
# also uses BSD make.
BUILD_DEPENDS =		${RUN_DEPENDS-main} \
			devel/gmake
RUN_DEPENDS-main =	${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-daemon_controller,${MODRUBY_FLAVOR}>=1.2.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}
LIB_DEPENDS-main =	${MODRUBY_LIB_DEPENDS} \
			${LIB_DEPENDS-standalone}
RUN_DEPENDS-standalone =${BUILD_PKGPATH}=${PASS_VERSION}
LIB_DEPENDS-standalone =devel/libev \
			devel/libidn \
			devel/pcre \
			net/curl

BUILD_ENV +=            CC=${CC} CXX=${CXX}

PASS_DIR =		${GEM_BASE_LIB}/gems/${DISTNAME}

SUBST_VARS =		MODRUBY_FLAVOR NGINX_VERSION PASS_VERSION

pre-configure:
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT='${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}' \
		${WRKSRC}/build/common_library.rb \
		${WRKSRC}/bin/passenger-config \
		${WRKSRC}/build/packaging.rb \
		${WRKSRC}/ext/nginx/config \
		${WRKSRC}/ext/common/ResourceLocator.h \
		${WRKSRC}/lib/phusion_passenger.rb \
		${WRKSRC}/lib/phusion_passenger/platform_info/depcheck_specs/libs.rb
	${MODRUBY_RUBY_ADJ} ${WRKSRC}/bin/passenger* \
		${WRKSRC}/dev/*.rb \
		${WRKSRC}/helper-scripts/p*

post-build:
	cd ${PASS_DIR} && ${SETENV} ${MAKE_ENV} \
		${RUBY} bin/passenger package-runtime standalone \
		--nginx-version ${NGINX_VERSION} \
		--nginx-tarball ${FULLDISTDIR}/nginx-${NGINX_VERSION}.tar.gz
	cd ${PASS_DIR} && ${SETENV} ${MAKE_ENV} ${RAKE} native_support
	cd ${PASS_DIR} && ${SETENV} ${MAKE_ENV} ${RAKE} nginx RELEASE=yes
	tar -zxf ${PASS_DIR}/standalone/${PASS_VERSION}/nginx-${NGINX_VERSION}-*-openbsd.tar.gz -C ${PASS_DIR}/standalone
	tar -zxf ${PASS_DIR}/standalone/${PASS_VERSION}/support-*-openbsd.tar.gz -C ${PASS_DIR}/standalone
	mv ${PASS_DIR}/buildout/ruby/ruby-*/passenger_native_support.so ${PASS_DIR}/lib/
	rm -r ${PASS_DIR}/standalone/{${PASS_VERSION},common,libeio} \
		${PASS_DIR}/{download_cache,nginx-${NGINX_VERSION},rpm,buildout/ruby} \
		${PASS_DIR}/ext/!(nginx|common) \
		${PASS_DIR}/bin/passenger-install-*-module \
		${GEM_BASE_BIN}/passenger-install-*-module*

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
