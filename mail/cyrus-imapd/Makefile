# $OpenBSD: Makefile,v 1.28 2009/09/03 18:51:52 ajacoutot Exp $

COMMENT-main=	Cyrus IMAP server
COMMENT-perl=	perl utils for the Cyrus IMAP server

V=		2.3.14
DISTNAME=	cyrus-imapd-${V}
PKGNAME-main=	${DISTNAME}p0
FULLPKGNAME-perl=cyrus-imapd-perl-${V}
FULLPKGPATH-perl=mail/cyrus-imapd,-perl
CATEGORIES=	mail

HOMEPAGE=	http://cyrusimap.web.cmu.edu

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYRIGHT file in package
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/imap/

WANTLIB=	crypto ssl

LIB_DEPENDS=	sasl2.>=2::security/cyrus-sasl2 \
		lib/db4/db.>=4:db->=4,<5:databases/db/v4
LIB_DEPENDS-main=${LIB_DEPENDS} \
		pcre.>=2,pcreposix.>=1::devel/pcre
RUN_DEPENDS-main=${RUN_DEPENDS}

PATCH_LIST=	patch-*

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I/usr/include/kerberosV" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_resolv_res_search=no \
		ac_cv_sys_long_file_names=yes \
		MAKEDEPEND=""
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
		--with-libwrap=/usr \
		--with-gss_impl=heimdal \
		--enable-gssapi=/usr \
		--enable-idled \
		--enable-listext \
		--enable-murder \
		--enable-nntp \
		--without-zephyr \
		--without-snmp \
		--with-afs=no \
		--with-ldap=no \
		--with-mysql=no \
		--with-pgsql=no \
		--with-sqlite=no

# this is a needed hack; to update PLIST:
# make SHARED_ONLY=Yes plist
MULTI_PACKAGES=	-main ${NO_SHARED_LIBS:S/Yes//:S/No/-perl/}
CONFIGURE_ARGS+=--with${NO_SHARED_LIBS:S/Yes/out/:S/No//}-perl

FLAVORS=	drac
FLAVOR?=

.if ${FLAVOR:L:Mdrac}
BUILD_DEPENDS+=	::mail/drac
PATCH_LIST+=	${WRKSRC}/contrib/drac_auth.patch \
		drac-patch-imap_Makefile_in
.endif

WANTLIB-main=	${WANTLIB} asn1 c com_err gssapi krb5 pthread wrap
WANTLIB-perl=	crypto ssl

NO_REGRESS=	Yes

MAN8=		fetchnews idled master imapd
SIEVEREF=	lib/imapoptions man/imapd.conf.5 \
		tools/masssievec tools/rehash tools/translatesieve \
		tools/upgradesieve doc/text/install-upgrade

pre-configure:
.for i in ${MAN8}
	@perl -pi -e "s,${i}\(8\),cyrus-${i}\(8\),g" ${WRKSRC}/man/*.[0-9]
.endfor
.for i in ${SIEVEREF}
	@perl -pi -e "s,/usr/sieve,/var/sieve,g" ${WRKSRC}/${i}
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
.endfor

.include <bsd.port.mk>
