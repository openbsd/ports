# $OpenBSD: Makefile,v 1.78 2013/03/21 09:46:02 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Cyrus IMAP server

V=		2.4.17
DISTNAME=	cyrus-imapd-${V}
REVISION=	1

CATEGORIES=	mail

HOMEPAGE=	http://www.cyrusimap.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYRIGHT file in package
PERMIT_PACKAGE_CDROM=	yes

MASTER_SITES=	http://cyrusimap.org/releases/ \
		ftp://ftp.cyrusimap.org/cyrus-imapd/ \
		ftp://ftp.cyrusimap.org/cyrus-imapd/OLD-VERSIONS/

WANTLIB += asn1 c com_err crypto gssapi krb5 pcre pcreposix pthread
WANTLIB += sasl2 ssl z lib/db4/db>=4

LIB_DEPENDS=	databases/db/v4 \
		devel/pcre \
		security/cyrus-sasl2

NO_TEST=	Yes

PATCH_LIST=	patch-*

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I/usr/include/kerberosV" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-service-path=${LOCALBASE}/libexec/cyrus-imapd \
		--with-bdb \
		--with-bdb-libdir=${LOCALBASE}/lib/db4 \
		--with-bdb-incdir=${LOCALBASE}/include/db4 \
		--with-cyrus-group=_cyrus \
		--with-cyrus-user=_cyrus \
		--with-sasl=${LOCALBASE} \
		--with-pidfile=/var/run/cyrus-master.pid \
		--with-syslogfacility=LOCAL6 \
		--with-openssl=/usr \
		--with-lock=fcntl \
		--with-com_err=/usr \
		--with-gss_impl=heimdal \
		--enable-gssapi=/usr \
		--enable-idled \
		--enable-murder \
		--enable-nntp \
		--without-libwrap \
		--without-zephyr \
		--without-snmp \
		--with-perl \
		--with-ldap=no \
		--with-mysql=no \
		--with-pgsql=no \
		--with-sqlite=no

# XXX our kerberosV is too old; use bundled compile_et and libcom_err
CONFIGURE_ARGS += --with-com_err=yes

FLAVORS=	drac
FLAVOR?=

.if ${FLAVOR:Mdrac}
BUILD_DEPENDS+=	mail/drac
PATCH_LIST+=	drac-patch-imap_Makefile_in
pre-patch:
	cd ${WRKSRC} && ${PATCH} -s -z .drac -p1 < contrib/drac_auth.patch
.endif

MAN8=		fetchnews idled master imapd deliver
SIEVEREF=	lib/imapoptions man/imapd.conf.5 \
		tools/masssievec tools/rehash tools/translatesieve \
		tools/upgradesieve doc/text/install-upgrade

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{lib/imapoptions,man/imapd.conf.5}
.for i in ${MAN8}
	perl -pi -e "s,${i}\(8\),cyrus-${i}\(8\),g" ${WRKSRC}/man/*.[0-9]
.endfor
.for i in ${SIEVEREF}
	perl -pi -e "s,/usr/sieve,/var/sieve,g" ${WRKSRC}/${i}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cyrus-imapd
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/cyrus-imapd
	cd ${WRKSRC}/doc; tar cf - text | \
		tar xf - -C ${PREFIX}/share/doc/cyrus-imapd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyrus-imapd
	${INSTALL_DATA} ${WRKSRC}/master/conf/*.conf \
		${PREFIX}/share/examples/cyrus-imapd/
	${INSTALL_DATA} ${FILESDIR}/imapd.conf \
		${PREFIX}/share/examples/cyrus-imapd/
	cd ${WRKSRC}; tar cf - tools | \
		tar xf - -C ${PREFIX}/share/examples/cyrus-imapd
.for i in ${MAN8}
	${INSTALL_MAN} ${PREFIX}/man/man8/${i}.8 ${PREFIX}/man/man8/cyrus-$i.8
	rm -f ${PREFIX}/man/man8/${i}.8
.endfor

.include <bsd.port.mk>
