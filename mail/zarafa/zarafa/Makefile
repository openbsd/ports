# $OpenBSD: Makefile,v 1.40 2010/07/06 06:38:32 ajacoutot Exp $

COMMENT-main=	MS Exchange groupware suite replacement
COMMENT-web=	zarafa webaccess frontend and MAPI extensions for PHP

V=		6.40.0
DISTNAME=	zarafa-${V}

PKGNAME-main=	${DISTNAME}p0
PKGNAME-web=	zarafa-webaccess-${V}p0

CATEGORIES=	mail www productivity

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/zarafa/

SHARED_LIBS +=  common_util	1.0 # .1.0
SHARED_LIBS +=  common_mapi	1.0 # .1.0
SHARED_LIBS +=  common_ssl	1.0 # .1.0
SHARED_LIBS +=  freebusy	1.0 # .1.0
SHARED_LIBS +=  mapi		1.0 # .0.0
SHARED_LIBS +=  zarafaclient	1.0 # .1.0
SHARED_LIBS +=  icalmapi	1.0 # .1.0
SHARED_LIBS +=  inetmapi	1.0 # .1.0
SHARED_LIBS +=  zarafasync	1.0 # .1.0

MULTI_PACKAGES=	-main -web

MODULES=	devel/gettext

BUILD_DEPENDS=	::www/php5/core \
		::textproc/xmlto \
		::net/curl

WANTLIB-main=	asn1 c com_err crypto gssapi krb5 m ncurses pthread \
		sasl2 ssl stdc++ z
LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		xml2.>=10::textproc/libxml \
		mysqlclient.>=19::databases/mysql \
		lber.>=9,ldap::databases/openldap \
		uuid.>=13::devel/uuid \
		execinfo::devel/libexecinfo \
		vmime-zarafa:zarafa-libvmime->=0.7.1p3:mail/zarafa/libvmime \
		ical.>=1,icalss::textproc/libical

WANTLIB-web=	execinfo ical icalss uuid vmime-zarafa
LIB_DEPENDS-web= ${MODGETTEXT_LIB_DEPENDS} \
		common_mapi,common_util,freebusy,icalmapi,inetmapi,mapi::mail/zarafa/zarafa,-main
RUN_DEPENDS-web= ::www/php5/core

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

WEBROOT=	/var/www

PREFIX-web=	${WEBROOT}
INSTDIR=	${PREFIX-web}/zarafa-webaccess
MODULE_NAME=	mapi

SUBST_VARS=	^MODULE_NAME INSTDIR PREFIX-web

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/zarafa" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo \
			-L${LOCALBASE}/lib/zarafa" \
		ZAFARA_LDFLAGS="-L${LOCALBASE}/lib/zarafa" \
		PHP_SYSCONF_DIR="${PREFIX-web}/conf/php5"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-perl \
		--with-userscript-prefix=${SYSCONFDIR}/zarafa/userscripts \
		--with-quotatemplate-prefix=${SYSCONFDIR}/zarafa/quotamail \
		--enable-dependency-tracking \
		--enable-release \
		--enable-oss \
		--with-distro=openbsd \
		--with-vmime-prefix=${LOCALBASE}/include/zarafa \
		--with-ical-prefix=${LOCALBASE}/include/

# XXX in-tree heimdal does not provide krb5_free_unparsed_name()
CONFIGURE_ARGS+= --with-krb5=/usr/bin/true

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		USERSCRIPTDIR=${PREFIX}/share/examples/zarafa/userscripts \
		QUOTATEMPLATEDIR=${PREFIX}/share/examples/zarafa/quotamail

SUB_SCRIPTS=	createcompany.d/00createpublic groups_common.sh \
		createuser.d/00createstore companies_common.sh \
		users_common.sh

post-patch:
	mv ${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg \
		${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg.dist

pre-configure:
	cd ${WRKSRC}/installer/linux && \
		for i in *.cfg createuser.dotforward ; do \
			${SUBST_CMD} $$i; \
			perl -pi -e 's/\r\n/\n/;' $$i; done
	for i in ${SUB_SCRIPTS}; do \
		${SUBST_CMD} ${WRKSRC}/installer/userscripts/$$i; done
	${SUBST_CMD} ${WRKSRC}/php-ext/Makefile.in \
		${WRKSRC}/spooler/DAgent.cpp
	perl -pi -e 's,/usr/share/zarafa,${PREFIX}/share/examples/zarafa,g;' \
		-e 's,/etc/zarafa,${SYSCONFDIR}/zarafa,g;' \
		-e 's,/usr/bin,${PREFIX}/bin,g;' \
		-e 's,/var/lib/zarafa,/var/db/zarafa,g;' \
		-e 's,ssl-certificate.sh,ssl-certificates.sh,g' \
		${WRKSRC}/doc/manual.xml

post-install:
	${SUBST_CMD} ${WRKSRC}/php-webclient-ajax/config.php.dist
	find ${WRKSRC}/php-webclient-ajax -name \*.orig -or -name \*.bak \
		-or -name \*.beforesubst | xargs rm -f
	${INSTALL_DATA_DIR} ${WRKINST}${INSTDIR}
	cd ${WRKSRC}/php-webclient-ajax && tar cf - ./ | \
		tar -xf - -C ${WRKINST}${INSTDIR}
	${INSTALL_DATA} ${WRKINST}${INSTDIR}/debug.php \
		${WRKINST}${INSTDIR}/debug.php.disabled
	${INSTALL_DATA} /dev/null ${WRKINST}${INSTDIR}/debug.txt 
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}${INSTDIR}

	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/zarafa/README.OpenBSD
	${SUBST_CMD} -c ${FILESDIR}/zarafa.m4 ${PREFIX}/share/examples/zarafa/zarafa.m4
	${SUBST_CMD} -c ${FILESDIR}/local_zarafa.m4 ${PREFIX}/share/examples/zarafa/local_zarafa.m4
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/zarafa
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4
	chmod ${SHAREMODE} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-web}/conf/php5.sample
	${INSTALL_DATA} ${WRKSRC}/php-ext/zarafa.ini \
		${WRKINST}/${PREFIX-web}/conf/php5.sample/${MODULE_NAME}.ini.dist
	mv ${PREFIX}/share/doc/zarafa/zarafa.schema \
		${PREFIX}/share/examples/zarafa/
	find ${WRKINST}${PREFIX-web}/include/php -type f \
		-exec perl -pi -e 's,\?php\?,\?php,' {} \;

.include <bsd.port.mk>
