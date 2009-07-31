# $OpenBSD: Makefile,v 1.13 2009/07/31 09:55:56 ajacoutot Exp $

COMMENT-main=	MS Exchange groupware suite replacement
COMMENT-php=	MAPI extensions for php5

V=		6.30.0
DISTNAME=	zarafa-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-php=	php5-mapi-${V}

CATEGORIES=	mail www productivity

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/zarafa/

SHARED_LIBS +=  common_util	0.0 # .1.0
SHARED_LIBS +=  common_mapi	0.0 # .1.0
SHARED_LIBS +=  common_ssl	0.0 # .1.0
SHARED_LIBS +=  freebusy	0.0 # .1.0
SHARED_LIBS +=  mapi		0.0 # .0.0
SHARED_LIBS +=  zarafaclient	0.0 # .1.0
SHARED_LIBS +=  icalmapi	0.0 # .1.0
SHARED_LIBS +=  inetmapi	0.0 # .1.0

MULTI_PACKAGES=	-main -php

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
		vmime-zarafa::mail/zarafa/libvmime \
		ical-zarafa.>=1,icalss-zarafa.>=1::mail/zarafa/libical

WANTLIB-php=	execinfo ical-zarafa icalss-zarafa \
		uuid vmime-zarafa
LIB_DEPENDS-php= ${MODGETTEXT_LIB_DEPENDS} \
		common_mapi,common_util,freebusy,icalmapi,inetmapi,mapi::mail/zarafa/zarafa,-main
RUN_DEPENDS-php= ::www/php5/core

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

PREFIX-php=	/var/www
MODULE_NAME=	mapi
SUBST_VARS=	^MODULE_NAME PREFIX-php

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/zarafa" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo \
			-L${LOCALBASE}/lib/zarafa" \
		ZAFARA_LDFLAGS="-L${LOCALBASE}/lib/zarafa"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-dependency-tracking \
		--disable-static \
		--with-userscript-prefix=${SYSCONFDIR}/zarafa/userscripts \
		--with-quotatemplate-prefix=${SYSCONFDIR}/zarafa/quotamail \
		--enable-release \
		--enable-oss \
		--disable-perl \
		--with-vmime-prefix=${LOCALBASE}/include/zarafa \
		--with-ical-prefix=${LOCALBASE}/include/

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/zarafa/report-ca \
		USERSCRIPTDIR=${PREFIX}/share/examples/zarafa/userscripts \
		QUOTATEMPLATEDIR=${PREFIX}/share/examples/zarafa/quotamail

SUB_SCRIPTS=	createcompany.d/00createpublic groups_common.sh \
		createuser.d/00createstore deleteuser.d/99deletestore \
		companies_common.sh users_common.sh

pre-configure:
	cd ${WRKSRC}/installer/linux && \
		for i in *.cfg createuser.dotforward ; do \
			${SUBST_CMD} $$i; \
			perl -pi -e 's/\r\n/\n/;' $$i; done
	for i in ${SUB_SCRIPTS}; do \
		${SUBST_CMD} ${WRKSRC}/installer/userscripts/$$i; done
	${SUBST_CMD} ${WRKSRC}/php-ext/Makefile.in
	perl -pi -e 's,/usr/share/zarafa,${PREFIX}/share/examples/zarafa,g;' \
		-e 's,/etc/zarafa,${SYSCONFDIR}/zarafa,g;' \
		-e 's,/usr/bin,${PREFIX}/bin,g;' \
		-e 's,/var/lib/zarafa,/var/db/zarafa,g;' \
		-e 's,ssl-certificate.sh,ssl-certificates.sh,g' \
		${WRKSRC}/doc/manual.xml

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/zarafa/README.OpenBSD
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/zarafa
	${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX-php}/conf/php5.sample
	echo "; Enable Zarafa mapi extension module\nextension=mapi.so" \
		> ${WRKINST}/${PREFIX-php}/conf/php5.sample/${MODULE_NAME}.ini
	mv ${PREFIX}/share/doc/zarafa/zarafa.schema \
		${PREFIX}/share/examples/zarafa/
	find ${WRKINST}${PREFIX-php}/include/php/mapi/ -type f \
		-exec perl -pi -e 's,\?php\?,\?php,' {} \;

.include <bsd.port.mk>
