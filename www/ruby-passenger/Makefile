# $OpenBSD: Makefile,v 1.31 2013/08/14 03:08:09 lteo Exp $

COMMENT-main =		Nginx module for deploying ruby applications
COMMENT-standalone =	ruby web application server

PASS_VERSION =		3.0.11
NGINX_VERSION =		1.2.3
DISTNAME =		passenger-${PASS_VERSION}
REVISION =		7
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

SHARED_ONLY-main =	Yes
SHARED_ONLY-standalone =	Yes

CONFIGURE_STYLE =	gem ext

WANTLIB-main =	c crypto curl ev idn m pthread  ssl stdc++ z \
		${MODRUBY_WANTLIB}
WANTLIB-standalone =	c crypto curl ev idn m pthread ssl stdc++ z

# Make devel/gmake a BUILD_DEPEND instead of USE_GMAKE, as the port
# also uses BSD make.
BUILD_DEPENDS =		${RUN_DEPENDS-main} \
			devel/gmake
RUN_DEPENDS-main =	${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-fastthread,${MODRUBY_FLAVOR}>=1.0.1 \
			devel/ruby-daemon_controller,${MODRUBY_FLAVOR}>=0.2.5 \
			www/ruby-rack,${MODRUBY_FLAVOR}
LIB_DEPENDS-main =	${MODRUBY_LIB_DEPENDS} \
			${LIB_DEPENDS-standalone}
RUN_DEPENDS-standalone =${BUILD_PKGPATH}=${PASS_VERSION}
LIB_DEPENDS-standalone =devel/libev \
			devel/libidn \
			net/curl

BUILD_ENV +=            CC=${CC} CXX=${CXX}

PASS_DIR =		${GEM_BASE_LIB}/gems/${DISTNAME}

SUBST_VARS =		MODRUBY_FLAVOR

pre-configure:
	${SUBST_CMD} -DPASSENGER_ROOT='${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}' \
		${WRKSRC}/build/common_library.rb \
		${WRKSRC}/bin/passenger-config \
		${WRKSRC}/build/packaging.rb \
		${WRKSRC}/ext/common/ResourceLocator.h \
		${WRKSRC}/lib/phusion_passenger.rb
	${MODRUBY_RUBY_ADJ} ${WRKSRC}/bin/passenger* \
		${WRKSRC}/dev/*.rb \
		${WRKSRC}/helper-scripts/p*

post-build:
	cd ${PASS_DIR} && ${SETENV} ${MAKE_ENV} \
		${RUBY} bin/passenger package-runtime standalone \
		--nginx-version ${NGINX_VERSION} \
		--nginx-tarball ${FULLDISTDIR}/nginx-${NGINX_VERSION}.tar.gz
	mkdir ${PASS_DIR}/standalone/support
	tar -zxf ${PASS_DIR}/standalone/runtime/nginx-${NGINX_VERSION}.tar.gz -C ${PASS_DIR}/standalone
	tar -zxf ${PASS_DIR}/standalone/runtime/support.tar.gz -C ${PASS_DIR}/standalone/support
	mv ${PASS_DIR}/standalone/sbin/nginx ${PASS_DIR}/standalone/
	cd ${PASS_DIR} && rm -rf standalone/{runtime,sbin}
	cd ${PASS_DIR}/ext/ruby && ${RUBY} extconf.rb && make && mv passenger_native_support.so ${PASS_DIR}/lib/
	cd ${PASS_DIR}/ext/nginx && ${RAKE} nginx RELEASE=yes
	cp -R ${PASS_DIR}/standalone/support/agents ${PASS_DIR}/

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv passenger-config.1 ${WRKINST}/${LOCALBASE}/man/man1/passenger-config${GEM_MAN_SUFFIX}.1 && \
		mv passenger-status.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-status${GEM_MAN_SUFFIX}.8 && \
		mv passenger-memory-stats.8 ${WRKINST}/${LOCALBASE}/man/man8/passenger-memory-stats${GEM_MAN_SUFFIX}.8
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man \
		${GEM_ABS_PATH}/gems/${DISTNAME}/ext/ruby/ \
		${GEM_ABS_PATH}/gems/${DISTNAME}/standalone/support/ext/ruby/
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_DATA} ${FILESDIR}/nginx-passenger.conf.sample ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	${SUBST_CMD} -DRUBY=${RUBY} \
		-DPASSENGER_ROOT=${TRUEPREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX} \
		${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample
	rm ${PREFIX}/share/nginx/nginx-passenger${GEM_MAN_SUFFIX}.conf.sample.*
	ln -s ${TRUEPREFIX}/${GEM_LIB}/gems/passenger-${PASS_VERSION} ${PREFIX}/lib/phusion-passenger${GEM_MAN_SUFFIX}

.include <bsd.port.mk>
