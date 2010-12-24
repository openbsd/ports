# $OpenBSD: Makefile,v 1.21 2010/12/24 10:40:06 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main =	fast, flexible and easy to configure Web Server
COMMENT-geoip =	GeoIP module for Cherokee web server
COMMENT-ldap =	LDAP module for Cherokee web server
COMMENT-mysql =	MySQL module for Cherokee web server
COMMENT-streaming = Streaming module for Cherokee web server

DIR =		1.0
VERSION =	${DIR}.14
DISTNAME =	cherokee-${VERSION}

PKGNAME-main =	${DISTNAME}
PKGNAME-ldap =	cherokee-ldap-${VERSION}
PKGNAME-mysql =	cherokee-mysql-${VERSION}
PKGNAME-geoip =	cherokee-geoip-${VERSION}
PKGNAME-streaming = cherokee-streaming-${VERSION}

REVISION-main=	1

SHARED_LIBS =	cherokee-base		0.0 \
		cherokee-client		0.0 \
		cherokee-server		0.0

CATEGORIES =	www

HOMEPAGE =	http://www.cherokee-project.com/

MAINTAINER =	Fernando Quintero <fernando.a.quintero@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes 
PERMIT_DISTFILES_FTP =	Yes 

MASTER_SITES =	${HOMEPAGE}download/${DIR}/${VERSION}/ \
		http://ftp.heanet.ie/mirrors/cherokee/${DIR}/${VERSION}/ \
		http://www.ring.gr.jp/archives/net/cherokee/${DIR}/${VERSION}/ \
		http://cherokee.osuosl.org/${DIR}/${VERSION}/

MULTI_PACKAGES =-main -ldap -mysql -geoip -streaming

MODULES =	lang/python

BUILD_DEPENDS =	textproc/py-docutils \
		www/php5/core,-fastcgi

LIB_DEPENDS-main =	devel/pcre
WANTLIB-main =		c crypto pcre pthread ssl
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			www/spawn-fcgi \
			net/rrdtool

LIB_DEPENDS-geoip =	net/GeoIP
WANTLIB-geoip =		crypto GeoIP>=6
RUN_DEPENDS-geoip =	${BASE_PKGPATH}

LIB_DEPENDS-ldap =	databases/openldap
WANTLIB-ldap =		asn1 com_err crypto gssapi krb5 lber-2.3 ldap-2.3 sasl2 ssl
RUN_DEPENDS-ldap =	${BASE_PKGPATH}

LIB_DEPENDS-mysql =	databases/mysql
WANTLIB-mysql =		crypto m mysqlclient>=19 ssl z
RUN_DEPENDS-mysql =	${BASE_PKGPATH}

LIB_DEPENDS-streaming =	graphics/ffmpeg \
			archivers/bzip2
WANTLIB-streaming += avcodec>=13 avformat>=12 avutil>=6 bz2 crypto m
WANTLIB-streaming += faac faad gsm mp3lame ogg orc-0.4 schroedinger-1.0
WANTLIB-streaming += speex theora vorbis vorbisenc x264 z
RUN_DEPENDS-streaming = ${BASE_PKGPATH}

USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static
USE_GROFF =	Yes

FAKE_FLAGS =	cherokeeconfdir="${PREFIX}/share/examples/cherokee/etc" \
		cherokeewwwdir="${PREFIX}/share/examples/cherokee/www" \
		cherokeewwwimagesdir="${PREFIX}/share/examples/cherokee/www/images"

CONFIGURE_STYLE =	gnu	
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PHPCGI="${LOCALBASE}/bin/php-fastcgi" \
			ac_cv_func_getgrnam_r=no
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-static \
			--sysconfdir=${SYSCONFDIR} \
			--localstatedir=/var \
			--with-wwwroot=/var/cherokee \
			--with-wwwuser=_cherokee \
			--with-wwwgroup=_cherokee \
			--disable-nls \
			--disable-pam \
			--with-geoip \
			--with-ldap \
			--with-mysql \
			--with-ffmpeg 

.ifdef DEBUG
CFLAGS +=		-O0 -g3
CONFIGURE_ARGS +=	--enable-trace
.endif

MODPY_ADJ_FILES= admin/CTK/CTK-run.pre admin/upgrade_config.py \
		cherokee/cherokee-admin-launcher \
		cherokee/cherokee-tweak doc/test_images.py \
		gitlog2changelog.py po/po_stats.py svnlog2changelog.py \
		admin/server.py qa/run-tests.py contrib/tracelor.py

LANGUAGES =	en es de nl sv_SE zh_CN fr pt_BR pl ca it gl

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cherokee/main_admin.c

post-install:
	cd ${PREFIX}/share/cherokee/admin && find . -name "*.py" | \
		xargs ${MODPY_BIN} ${MODPY_LIBDIR}/py_compile.py
	touch ${PREFIX}/share/examples/cherokee/blank
.for i in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$i/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/admin/$i.gmo \
		${PREFIX}/share/locale/$i/LC_MESSAGES/cherokee.mo
.endfor

.include <bsd.port.mk>
