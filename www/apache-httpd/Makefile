# $OpenBSD: Makefile,v 1.92 2018/11/01 18:05:01 sthen Exp $

COMMENT-main=		apache HTTP server
COMMENT-common=		/var/www files for Apache HTTPd
REVISION-main=		0

V=			2.4.37
DISTNAME=		httpd-${V}
PKGNAME=		apache-httpd-${V}

PKGNAME-main=		${PKGNAME}
FULLPKGNAME-common=	apache-httpd-common-${V}
FULLPKGPATH-common=	www/apache-httpd,-common

CATEGORIES=		www net

HOMEPAGE=		https://httpd.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += apr-1 aprutil-1 brotlicommon brotlienc c crypto curl
WANTLIB-main += db expat iconv jansson lzma m nghttp2 pcre pthread ssl
WANTLIB-main += xml2 z

MASTER_SITES=		${MASTER_SITE_APACHE:=httpd/}

NO_TEST=		Yes

MULTI_PACKAGES=		-main -common

RUN_DEPENDS-main=	www/apache-httpd,-common

LIB_DEPENDS-main=	archivers/brotli \
			archivers/xz \
			devel/jansson \
			devel/pcre \
			net/curl \
			textproc/libxml \
			www/nghttp2

WANTLIB-common=		# empty
LIB_DEPENDS-common=	# empty

HTTPD_DIR=		/var/www
CONFDIR=		${SYSCONFDIR}/apache2
FLAVOR_COMMA=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		CONFDIR FLAVOR_COMMA
PREFIX-common=		/var/www

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--enable-layout=OpenBSD \
			--prefix=${HTTPD_DIR} \
			--exec-prefix=${LOCALBASE} \
			--sysconfdir=${CONFDIR} \
			--with-apr=${LOCALBASE}/bin/apr-1-config  \
			--with-apr-util=${LOCALBASE}/bin/apu-1-config \
			--enable-ssl --with-ssl=/usr \
			--enable-mpms-shared=all \
			--with-mpm=prefork \
			--with-program-name=httpd2 \
			--enable-modules=all \
			--enable-cache \
			--enable-disk-cache \
			--enable-http2 \
			--enable-proxy=shared \
			--enable-proxy-fdpass \
			--enable-mods-shared=all \
			--enable-cgi \
			--enable-suexec \
			--with-suexec-caller=www \
			--with-suexec-bin=${TRUEPREFIX}/sbin/suexec2 \
			--with-suexec-logfile=${LOCALSTATEDIR}/log/suexec2_log \
			--with-pcre=${LOCALBASE}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			AWK=awk

FAKE_FLAGS=		rel_user=www rel_group=www \
			rel_datadir=${HTTPD_DIR} \
			datadir=${PREFIX}/share/examples/apache2 \
			sysconfdir=${PREFIX}/share/examples/apache2/conf

FLAVORS=		ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap --enable-ldap --enable-authnz-ldap
WANTLIB-main +=		lber-2.4 ldap-2.4 sasl2
LIB_DEPENDS-main+=	databases/openldap
LIB_DEPENDS-main+=	apr-util->=1.6.1p0-ldap:devel/apr-util,ldap
.else
LIB_DEPENDS-main+=	apr-util->=1.6.1p0-!ldap:devel/apr-util
.endif

pre-configure:
	sed -i 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/config.layout
	sed -i 's,%%CONFDIR%%,${CONFDIR},' ${WRKSRC}/config.layout \
		${WRKSRC}/configure
	sed -i 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/support/apxs.in

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/sbin
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib
	rmdir ${PREFIX}/share/examples/apache2/logs

	# -common
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-common}/cgi-bin
	mv ${PREFIX}/share/examples/apache2/cgi-bin/{printenv,test-cgi} \
		${WRKINST}${PREFIX-common}/cgi-bin/
	mv ${PREFIX}/share/examples/apache2/icons ${WRKINST}${PREFIX-common}/

	# avoid conflicts with httpd in base
	mv ${PREFIX}/man/man1/htpasswd.1 ${PREFIX}/man/man1/htpasswd2.1
	mv ${PREFIX}/man/man8/httpd.8 ${PREFIX}/man/man8/httpd2.8
	mv ${PREFIX}/bin/htpasswd ${PREFIX}/bin/htpasswd2

	mv ${PREFIX}/bin/apxs ${PREFIX}/sbin # other ports expect it in sbin/

	# courtesy symlinks
	for i in logresolve dbmmanage htdigest; do ln -s $${i} ${PREFIX}/bin/$${i}2; done
	for i in apachectl apxs rotatelogs suexec; do ln -s $${i} ${PREFIX}/sbin/$${i}2; done

.if ${FLAVOR:Mldap}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ap2-mod_auth_ldap
.for i in mod_ldap.html mod_authnz_ldap.html.en \
	mod_authnz_ldap.html mod_ldap.html.en
	${INSTALL_DATA} ${WRKSRC}/docs/manual/mod/${i} \
		${PREFIX}/share/doc/ap2-mod_auth_ldap/
.endfor
.endif

.include <bsd.port.mk>
