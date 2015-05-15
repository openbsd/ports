# $OpenBSD: Makefile,v 1.57 2015/05/15 08:08:03 stsp Exp $

COMMENT=	apache HTTP server

V=		2.4.12
PKGNAME=	apache-httpd-${V}
DISTNAME=	httpd-${V}

CATEGORIES=	www net

HOMEPAGE=	http://httpd.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

SHARED_ONLY=		Yes
USE_GROFF =		Yes
NO_TEST=		Yes

WANTLIB += c crypto m ssl expat apr-1 db>=4 z lzma pcre pthread aprutil-1>=2 \
	xml2

LIB_DEPENDS=		archivers/xz \
			devel/pcre \
			textproc/libxml

FLAVORS=		ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap --enable-ldap --enable-authnz-ldap
WANTLIB+=		lber-2.4 ldap-2.4 sasl2
LIB_DEPENDS+=		databases/openldap
LIB_DEPENDS+=		apr-util-*-ldap:devel/apr-util,ldap
.else
LIB_DEPENDS+=		apr-util-*-!ldap:devel/apr-util
.endif

MODULES=		converters/libiconv


MASTER_SITES=		${MASTER_SITE_APACHE:=httpd/}

HTTPD_DIR=		${LOCALSTATEDIR}/apache2
CONFDIR=		${SYSCONFDIR}/apache2
SUBST_VARS=		CONFDIR

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--enable-layout=OpenBSD \
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
			--enable-proxy=shared \
			--enable-mods-shared=all \
			--enable-suexec \
			--with-suexec-caller=_apache2 \
			--with-suexec-bin=${TRUEPREFIX}/sbin/suexec2 \
			--with-suexec-logfile=${LOCALSTATEDIR}/log/suexec2_log \
			--with-pcre=${LOCALBASE}

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		rel_user=_apache2 rel_group=_apache2 \
			rel_datadir=${HTTPD_DIR} \
			datadir=${PREFIX}/share/examples/apache2 \
			sysconfdir=${PREFIX}/share/examples/apache2/conf

A2BIN=			apxs logresolve dbmmanage htdigest htpasswd
A2SBIN=			apachectl rotatelogs suexec
A2MAN1=			dbmmanage apxs htdigest htpasswd logresolve
A2MAN8=			apachectl httpd rotatelogs suexec

pre-configure:
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/config.layout
	@perl -pi -e 's,%%CONFDIR%%,${CONFDIR},' ${WRKSRC}/config.layout \
	${WRKSRC}/configure
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/support/apxs.in

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/sbin
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib

.for i in ${A2MAN1}
	mv ${PREFIX}/man/man1/${i}.1 ${PREFIX}/man/man1/${i}2.1
.endfor

.for i in ${A2MAN8}
	mv ${PREFIX}/man/man8/${i}.8 ${PREFIX}/man/man8/${i}2.8
.endfor

.for i in ${A2BIN}
	mv ${PREFIX}/bin/${i} ${PREFIX}/bin/${i}2
.endfor
	mv ${PREFIX}/bin/apxs2 ${PREFIX}/sbin # other ports expect it in sbin/

.for i in ${A2SBIN}
	mv ${PREFIX}/sbin/${i} ${PREFIX}/sbin/${i}2
.endfor

.if ${FLAVOR:Mldap}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ap2-mod_auth_ldap
.for i in mod_ldap.html mod_authnz_ldap.html.en \
	mod_authnz_ldap.html mod_ldap.html.en
	${INSTALL_DATA} ${WRKSRC}/docs/manual/mod/${i} \
		${PREFIX}/share/doc/ap2-mod_auth_ldap/
.endfor
.endif

.include <bsd.port.mk>
