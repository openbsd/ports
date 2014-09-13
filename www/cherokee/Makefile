# $OpenBSD: Makefile,v 1.50 2014/09/13 18:09:22 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main =	fast, flexible and easy to configure web server
COMMENT-geoip =	GeoIP module for Cherokee web server
COMMENT-ldap =	LDAP module for Cherokee web server
COMMENT-mysql =	MySQL module for Cherokee web server
COMMENT-streaming = Streaming module for Cherokee web server

DIR =		1.2
VERSION =	${DIR}.101
DISTNAME =	cherokee-${VERSION}

PKGNAME-main =	${DISTNAME}
PKGNAME-ldap =	cherokee-ldap-${VERSION}
PKGNAME-mysql =	cherokee-mysql-${VERSION}
PKGNAME-geoip =	cherokee-geoip-${VERSION}
PKGNAME-streaming = cherokee-streaming-${VERSION}

REVISION-main =		3
REVISION-geoip =	2
REVISION-ldap =		6
REVISION-mysql =	5
REVISION-streaming =	3

SHARED_LIBS =	cherokee-base		0.0 \
		cherokee-client		0.0 \
		cherokee-server		0.0

CATEGORIES =	www

HOMEPAGE =	http://www.cherokee-project.com/

MAINTAINER =	Fernando Quintero <fernando.a.quintero@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}download/${DIR}/${VERSION}/ \
		http://ftp.heanet.ie/mirrors/cherokee/${DIR}/${VERSION}/ \
		http://www.ring.gr.jp/archives/net/cherokee/${DIR}/${VERSION}/ \
		http://cherokee.osuosl.org/${DIR}/${VERSION}/

MULTI_PACKAGES =-main -ldap -mysql -geoip -streaming

MODULES =	lang/php \
		lang/python

BUILD_DEPENDS =	textproc/py-docutils \
		lang/php/${MODPHP_VERSION},-fastcgi

LIB_DEPENDS-main =	devel/pcre
WANTLIB-main =		c crypto pcre pthread ssl
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			www/spawn-fcgi \
			net/rrdtool

LIB_DEPENDS-geoip =	net/GeoIP
WANTLIB-geoip =		crypto GeoIP>=6
RUN_DEPENDS-geoip =	${BASE_PKGPATH}

LIB_DEPENDS-ldap =	databases/openldap
WANTLIB-ldap =		crypto lber-2.4 ldap-2.4 sasl2 ssl
RUN_DEPENDS-ldap =	${BASE_PKGPATH}

LIB_DEPENDS-mysql =	databases/mariadb
WANTLIB-mysql =		crypto m mysqlclient ssl z
RUN_DEPENDS-mysql =	${BASE_PKGPATH}

LIB_DEPENDS-streaming =	graphics/ffmpeg>=20121026 \
			archivers/bzip2
WANTLIB-streaming += avcodec avformat avutil bz2 crypto m gsm
WANTLIB-streaming += mp3lame ogg orc-0.4 pthread schroedinger-1.0
WANTLIB-streaming += speex theoradec theoraenc vorbis vorbisenc vpx
WANTLIB-streaming += x264 xvidcore z opus ssl
RUN_DEPENDS-streaming = ${BASE_PKGPATH}

USE_GROFF =	Yes
USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

FAKE_FLAGS =	cherokeeconfdir="${PREFIX}/share/examples/cherokee/etc" \
		cherokeewwwdir="${PREFIX}/share/examples/cherokee/www" \
		cherokeewwwimagesdir="${PREFIX}/share/examples/cherokee/www/images"

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_execinfo_h=no
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-static \
			--enable-tmpdir=/tmp \
			--sysconfdir=${SYSCONFDIR} \
			--with-cgiroot=/var/cherokee/cgi-bin \
			--with-wwwroot=/var/cherokee \
			--with-wwwuser=_cherokee \
			--with-wwwgroup=_cherokee \
			--disable-nls \
			--disable-pam \
			--with-ffmpeg \
			--with-geoip \
			--with-ldap \
			--with-mysql \
			--with-php=${LOCALBASE}/bin/php-fastcgi-${MODPHP_VERSION} \
			--with-python=${MODPY_BIN}

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-trace
.endif

MODPY_ADJ_FILES=admin/CTK/CTK-run.pre admin/upgrade_config.py \
		cherokee/cherokee-admin-launcher \
		cherokee/cherokee-tweak doc/test_images.py \
		po/po_stats.py admin/server.py qa/run-tests.py \
		contrib/tracelor.py

LANGUAGES =	en es de nl sv_SE zh_CN fr pt_BR pl ca it gl

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/cherokee/main_admin.c

post-install:
	cd ${PREFIX}/share/cherokee/admin && find . -name "*.py" | \
		xargs ${MODPY_BIN} ${MODPY_LIBDIR}/py_compile.py
	touch ${PREFIX}/share/examples/cherokee/blank
.for i in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$i/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/admin/$i.gmo \
		${PREFIX}/share/locale/$i/LC_MESSAGES/cherokee.mo
.endfor
	@find ${PREFIX}/lib/cherokee -name '*.la' -print | xargs rm

.include <bsd.port.mk>
