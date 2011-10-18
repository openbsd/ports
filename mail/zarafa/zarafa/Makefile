# $OpenBSD: Makefile,v 1.108 2011/10/18 07:00:10 ajacoutot Exp $

COMMENT-main=	MS Exchange groupware suite replacement
COMMENT-web=	zarafa webaccess frontend and MAPI extensions for PHP

PKGNAME=	zarafa-${V}
PKGNAME-main=	zarafa-${V}
PKGNAME-web=	zarafa-webaccess-${V}

REVISION-main=	0
REVISION-web=	1

CATEGORIES=	mail www productivity

SHARED_LIBS +=  mapi                 2.0      # 0.0
SHARED_LIBS +=  zarafaclient         2.0      # 0.0
SHARED_LIBS +=  icalmapi             2.0      # 1.0
SHARED_LIBS +=  inetmapi             2.0      # 1.0
SHARED_LIBS +=  archiver             1.0      # 0.0
SHARED_LIBS +=  common_util          2.0      # 1.0
SHARED_LIBS +=  common_mapi          2.0      # 1.0
SHARED_LIBS +=  common_ssl           2.0      # 1.0
SHARED_LIBS +=  freebusy             2.0      # 1.0
SHARED_LIBS +=  zarafasync           2.0      # 1.0

MULTI_PACKAGES=	-main -web

MODULES=	devel/gettext \
		lang/python \
		lang/php

BUILD_DEPENDS=	textproc/xmlto \
		net/curl \
		devel/boost \
		textproc/clucene

WANTLIB += m pthread stdc++ z ${MODGETTEXT_WANTLIB}

WANTLIB-main += ${WANTLIB} ${MODPY_WANTLIB}
WANTLIB-main += asn1 boost_filesystem-mt boost_system-mt c com_err
WANTLIB-main += crypto execinfo gssapi ical icalss icudata icui18n
WANTLIB-main += icuuc krb5 lber ldap mysqlclient ncurses
WANTLIB-main += sasl2 ssl util uuid vmime-zarafa xml2

LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		textproc/libxml \
		databases/mysql \
		databases/openldap \
		devel/uuid \
		devel/libexecinfo \
		mail/zarafa/libvmime>=0.9.2 \
		textproc/libical \
		textproc/icu4c \
		devel/boost

WANTLIB-web += ${WANTLIB}
WANTLIB-web += boost_filesystem-mt boost_system-mt common_mapi common_util
WANTLIB-web += execinfo freebusy ical icalmapi icalss icudata icui18n
WANTLIB-web += icuuc inetmapi mapi uuid vmime-zarafa

LIB_DEPENDS-web= ${BASE_PKGPATH}>=7.0.0
RUN_DEPENDS-web= ${MODPHP_RUN_DEPENDS} \
		${MODGETTEXT_RUN_DEPENDS}

# XXX  ../../common/.libs/libcommon_mapi.so.1.0: undefined reference to
# `MAPILogonEx', `zarafa_dcgettext_wide' (and more)
# see patch-provider_server_Makefile_in
#     patch-ECtools_zarafa-cfgchecker_Makefile_in
#     patch-ECtools_zarafa-cfgchecker_Makefile_in
USE_LIBTOOL=	gnu
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes
USE_GROFF =	Yes

MODPY_ADJ_FILES=tools/python-scripts/optimize-imap.py \
		installer/linux/zarafa7-upgrade

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
		PHP_SYSCONF_DIR="${SYSCONFDIR}/php-${MODPHP_VERSION}" \
		ac_cv_lib_pam_pam_start=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-perl \
		--with-userscript-prefix=${SYSCONFDIR}/zarafa/userscripts \
		--with-quotatemplate-prefix=${SYSCONFDIR}/zarafa/quotamail \
		--enable-dependency-tracking \
		--enable-release \
		--enable-oss \
		--enable-unicode \
		--enable-python \
		--with-distro=openbsd \
		--with-vmime-prefix=${LOCALBASE}/include/zarafa \
		--with-ical-prefix=${LOCALBASE}/include \
		--with-clucene-lib-prefix=${LOCALBASE}/lib \
		--with-clucene-include-prefix=${LOCALBASE}/include \
		--with-python=${MODPY_BIN} \
		--with-php-config=${MODPHP_PHP_CONFIG}

# XXX in-tree heimdal does not provide krb5_free_unparsed_name()
CONFIGURE_ARGS+= --with-krb5-config=/usr/bin/true

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		USERSCRIPTDIR=${PREFIX}/share/examples/zarafa/userscripts \
		QUOTATEMPLATEDIR=${PREFIX}/share/examples/zarafa/quotamail \
		INDEXERSCRIPTSDIR=${PREFIX}/share/examples/zarafa/indexerscripts

SUB_SCRIPTS=	createcompany.d/00createpublic groups_common.sh \
		createuser.d/00createstore companies_common.sh \
		users_common.sh

WRKDIST=	${WRKDIR}/zarafa-${V}/

post-patch:
	mv ${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg \
		${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg.dist
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

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
	perl -pi -e 's,/bin/bash,/bin/sh,g' \
		${WRKSRC}/installer/indexerscripts/{attachments_parser,zmktemp}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${INSTDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-web}/include \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}

	${SUBST_CMD} ${WRKBUILD}/php-webclient-ajax/config.php.dist
	find ${WRKBUILD}/php-webclient-ajax -name \*.orig -or -name \*.bak \
		-or -name \*.beforesubst | xargs rm
	cd ${WRKBUILD}/php-webclient-ajax && tar cf - ./ | \
		tar -xf - -C ${WRKINST}${INSTDIR}
	mv ${WRKINST}${INSTDIR}/debug.php \
		${WRKINST}${INSTDIR}/debug.php.disabled
	${INSTALL_DATA} /dev/null ${WRKINST}${INSTDIR}/debug.txt
	${SUBST_CMD} -c ${FILESDIR}/zarafa.conf \
		${WRKINST}/${INSTDIR}/zarafa.conf.dist
	find ${PREFIX}/share/php -type f \
		-exec perl -pi -e 's,\?php\?,\?php,' {} \;
	for i in ${WRKINST}${INSTDIR}/server/language/* ; do \
		msgfmt -f -v -o $$i/LC_MESSAGES/zarafa.mo $$i/LC_MESSAGES/zarafa.po ; \
		rm $$i/LC_MESSAGES/zarafa.po ; \
	done

	${SUBST_CMD} -c ${FILESDIR}/zarafa.m4 ${PREFIX}/share/examples/zarafa/zarafa.m4
	${SUBST_CMD} -c ${FILESDIR}/local_zarafa.m4 ${PREFIX}/share/examples/zarafa/local_zarafa.m4

	# move files where we want them to be
	mv ${PREFIX}/share/doc/zarafa-gateway/* \
		${PREFIX}/share/doc/zarafa
	mv ${PREFIX}/share/doc/zarafa/example-config/* \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/doc/zarafa/zarafa.schema \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/examples/zarafa.ini \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/examples/zarafa/zarafa.ini \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/${MODULE_NAME}.ini
	mv ${PREFIX}/share/php ${WRKINST}${PREFIX-web}/include/php
	rm ${PREFIX}/share/examples/zarafa/unix.cfg
	rm ${PREFIX}/share/doc/zarafa/ssl-certificates.sh
	rmdir ${PREFIX}/share/doc/{zarafa/example-config,zarafa-gateway}
	rm -rf ${PREFIX}/share/examples/{init.d,logrotate.d,zarafa/zarafa-gateway,zarafa/license}

	# part of zarafa-licensed (i.e. commercial edition, linux bin only)
	cd ${PREFIX} && rm \
		man/man1/zarafa-licensed.1 \
		man/man5/zarafa-licensed.cfg.5 \
		man/man1/zarafa-restore.1 \
		man/man1/zarafa-backup.1 \
		man/man1/zarafa-report.1 \
		man/man1/za-aclsync.1 \
		man/man1/zarafa-msr.1 \
		man/man5/zarafa-msr.cfg.5 \
		man/man5/zarafa-backup.cfg.5
	rmdir ${PREFIX}/share/examples/zarafa/report-ca
	rmdir ${PREFIX}/var/lib/zarafa/report
	rmdir ${PREFIX}/var/lib/zarafa/
	rmdir ${PREFIX}/var/lib/
	rmdir ${PREFIX}/var/

	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/zarafa
	chown ${BINOWN}:${BINGRP} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4
	chmod ${SHAREMODE} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4

.include <bsd.port.mk>
