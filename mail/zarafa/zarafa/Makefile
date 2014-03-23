# $OpenBSD: Makefile,v 1.162 2014/03/23 18:33:04 ajacoutot Exp $

COMMENT-main=	MS Exchange groupware suite replacement
COMMENT-web=	zarafa webaccess frontend and MAPI extensions for PHP

PKGNAME=	zarafa-${V}
PKGNAME-main=	zarafa-${V}
PKGNAME-web=	zarafa-webaccess-${V}

REVISION-main=	2

CATEGORIES=	mail www productivity

SHARED_LIBS +=  common_util          2.0      # .0.0
SHARED_LIBS +=  common_mapi          2.0      # .0.0
SHARED_LIBS +=  common_ssl           2.0      # .0.0
SHARED_LIBS +=  common_service       2.0      # .0.0
SHARED_LIBS +=  freebusy             2.0      # .0.0
SHARED_LIBS +=  mapi                 2.0      # .0.0
SHARED_LIBS +=  zarafasync           2.0      # .0.0
SHARED_LIBS +=  zarafaclient         2.0      # .0.0
SHARED_LIBS +=  zarafacontacts       0.0      # .0.0
SHARED_LIBS +=  icalmapi             2.0      # .1.0
SHARED_LIBS +=  inetmapi             2.0      # .1.0
SHARED_LIBS +=  archiver             1.0      # .0.0
SHARED_LIBS +=  archiver-core        0.0      # .0.0

MULTI_PACKAGES=	-main -web

MODULES=	devel/gettext \
		lang/python \
		lang/php

MODPHP_DO_SAMPLE=mapi
MESSAGE-main=	# empty
UNMESSAGE-main=	# empty

BUILD_DEPENDS=	devel/swig \
		textproc/xmlto

# libcurl is searched by configure but unused
BUILD_DEPENDS += net/curl

WANTLIB += ${MODGETTEXT_WANTLIB}
WANTLIB += m pthread stdc++ z vmime execinfo icudata icui18n icuuc
WANTLIB += boost_filesystem-mt boost_system-mt uuid

WANTLIB-main += ${WANTLIB} ${MODPY_WANTLIB}
WANTLIB-main += asn1 c com_err crypto gssapi ical icalss krb5 lber-2.4
WANTLIB-main += mysqlclient ncursesw sasl2 ssl util xml2 kyotocabinet
WANTLIB-main += heimbase ldap_r-2.4 roken wind
WANTLIB-main += clucene-core clucene-shared

RUN_DEPENDS-main=${MODGETTEXT_RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS} \
		textproc/catdoc
LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		databases/kyotocabinet \
		databases/mysql \
		databases/openldap \
		devel/boost \
		devel/libexecinfo \
		devel/libvmime>=0.9.2p1 \
		sysutils/e2fsprogs>=1.42.7 \
		textproc/clucene>=2.3.3.4 \
		textproc/icu4c \
		textproc/libical \
		textproc/libxml

WANTLIB-web += ${WANTLIB}
WANTLIB-web += common_util freebusy ical icalmapi icalss inetmapi mapi
WANTLIB-web += common_mapi

LIB_DEPENDS-web= ${BASE_PKGPATH}>=${V}
RUN_DEPENDS-web= ${MODPHP_RUN_DEPENDS} \
		${MODGETTEXT_RUN_DEPENDS}

USE_GMAKE=	Yes
USE_GROFF =	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODPY_ADJ_FILES=tools/python-scripts/optimize-imap.py \
		tools/python-scripts/update-resource-recipients \
		installer/linux/zarafa7-upgrade \
		ECtools/zarafa-utils/zarafa-mailbox-permissions \
		ECtools/zarafa-utils/zarafa-set-oof

WEBROOT=	${VARBASE}/www

PREFIX-web=	${WEBROOT}
INSTDIR=	${PREFIX-web}/zarafa-webaccess

SUBST_VARS=	INSTDIR PREFIX-web

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
		--with-mapi-configdir=${SYSCONFDIR}/mapi \
		--with-userscript-prefix=${SYSCONFDIR}/zarafa/userscripts \
		--with-quotatemplate-prefix=${SYSCONFDIR}/zarafa/quotamail \
		--with-searchscripts-prefix=${SYSCONFDIR}/zarafa/searchscripts \
		--enable-release \
		--enable-oss \
		--enable-unicode \
		--enable-python \
		--enable-icu \
		--with-distro=openbsd \
		--with-vmime-prefix=${LOCALBASE}/include \
		--with-ical-prefix=${LOCALBASE}/include \
		--with-clucene-lib-prefix=${LOCALBASE}/lib \
		--with-clucene-include-prefix=${LOCALBASE}/include \
		--with-python=${MODPY_BIN} \
		--with-php-config=${MODPHP_PHP_CONFIG}

# force build with clucene >= 2.x
CONFIGURE_ENV +=ac_cv_lib_clucene__ZN6lucene5index11IndexReader4openEPKc=yes
MAKE_FLAGS +=	CLUCENE_CFLAGS="$$(pkg-config --cflags libclucene-core)" \
		CLUCENE_LIBS="$$(pkg-config --libs libclucene-core)"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		USERSCRIPTDIR=${PREFIX}/share/examples/zarafa/userscripts \
		QUOTATEMPLATEDIR=${PREFIX}/share/examples/zarafa/quotamail \
		SEARCHSCRIPTSDIR=${PREFIX}/share/examples/zarafa/searchscripts \
		MAPICONFIGDIR=${PREFIX}/share/examples/zarafa/mapi

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
		${WRKSRC}/spooler/{DAgent,Spooler}.cpp
	perl -pi -e 's,/usr/share/zarafa,${PREFIX}/share/examples/zarafa,g;' \
		-e 's,/etc/zarafa,${SYSCONFDIR}/zarafa,g;' \
		-e 's,/usr/bin,${PREFIX}/bin,g;' \
		-e 's,/var/lib/zarafa,/var/db/zarafa,g;' \
		-e 's,ssl-certificate.sh,ssl-certificates.sh,g' \
		${WRKSRC}/doc/manual.xml
	perl -pi -e 's,/bin/bash,/bin/sh,g' \
		${WRKSRC}/installer/searchscripts/{attachments_parser,zmktemp}

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
		msgfmt -f -v -o $$i/LC_MESSAGES/zarafa_webaccess.mo $$i/LC_MESSAGES/zarafa_webaccess.po ; \
		rm $$i/LC_MESSAGES/zarafa_webaccess.po ; \
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
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/${MODPHP_DO_SAMPLE}.ini
	mv ${PREFIX}/share/php ${WRKINST}${PREFIX-web}/include/php
	rm ${PREFIX}/share/examples/cron.daily/zarafa-client-update
	rm ${PREFIX}/share/examples/zarafa/unix.cfg
	rm ${PREFIX}/share/doc/zarafa/ssl-certificates.sh
	rmdir ${PREFIX}/share/doc/{zarafa/example-config,zarafa-gateway}
	rm -rf ${PREFIX}/share/examples/{cron.daily,init.d,logrotate.d,sysconfig,zarafa/zarafa-gateway,zarafa/license}

	# part of zarafa-licensed, Zarafa Enterprise / Hosted editions
	# (i.e. commercial edition, linux bin only)
	cd ${PREFIX} && rm \
		man/man1/zarafa-licensed.1 \
		man/man5/zarafa-licensed.cfg.5 \
		man/man1/zarafa-restore.1 \
		man/man1/zarafa-backup.1 \
		man/man1/zarafa-msr-verify.1 \
		man/man1/zarafa-report.1 \
		man/man1/za-aclsync.1 \
		man/man1/zarafa-msr.1 \
		man/man5/zarafa-ldapms.cfg.5 \
		man/man5/zarafa-msr.cfg.5 \
		man/man5/zarafa-backup.cfg.5
	rmdir ${PREFIX}/share/examples/zarafa/report-ca
	rmdir ${WRKINST}/var/lib/zarafa/{dagent,spooler}/plugins
	rmdir ${WRKINST}/var/lib/zarafa/{dagent,spooler}
	rmdir ${WRKINST}/var/lib/zarafa/report
	rmdir ${WRKINST}/var/lib/zarafa/
	rmdir ${WRKINST}/var/lib/

	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/zarafa-dagent/python \
		${PREFIX}/share/zarafa-spooler/python \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages

	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/zarafa
	chown ${BINOWN}:${BINGRP} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4
	chmod ${SHAREMODE} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4

.include <bsd.port.mk>
