# $OpenBSD: Makefile,v 1.2 2006/02/08 19:31:13 sturm Exp $

COMMENT=	"Cyrus IMAP server"
COMMENT-perl=	"perl utils for the Cyrus IMAP server"

V=		2.2.12
DISTNAME=	cyrus-imapd-${V}
PKGNAME=	${DISTNAME}p0
FULLPKGNAME-perl=cyrus-imapd-perl-${V}
CATEGORIES=	mail
HOMEPAGE=	http://asg.web.cmu.edu/cyrus/imapd/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# see the COPYRIGHT file in package sources
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/imap/ \
		ftp://ftp.hanse.de/sites/transit/mirror/ftp.andrew.cmu.edu/pub/cyrus-mail

WANTLIB=	crypto ssl 

LIB_DEPENDS=	sasl2.2::security/cyrus-sasl2 \
		lib/db4/db.=4:db-4.*:databases/db/v4

PATCH_LIST=	patch-*

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_resolv_res_search=no \
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
		--with-idle=idled \
		--with-libwrap=/usr \
		--enable-listext \
		--enable-murder \
		--enable-nntp \
		--without-zephyr \
		--without-snmp

MULTI_PACKAGES=	${NO_SHARED_LIBS:S/Yes//:S/No/-perl/}
SUBPACKAGE?=
CONFIGURE_ARGS+=--with${NO_SHARED_LIBS:S/Yes/out/:S/No//}-perl

FLAVORS=	drac kerberos
FLAVOR?=

.if ${FLAVOR:L:Mdrac}
BUILD_DEPENDS=	::mail/drac
PATCH_LIST+=	${WRKSRC}/contrib/drac_auth.patch \
		drac-patch-imap_Makefile.in
.endif

.if ${FLAVOR:L:Mkerberos}
CONFIGURE_ENV+=	CPPFLAGS="-I/usr/include/kerberosV" \
CONFIGURE_ARGS+=--with-auth=krb5 \
		--enable-gssapi=/usr \
		--with-gss_impl=heimdal
.else
CONFIGURE_ARGS+=--with-auth=unix \
		--disable-gssapi
.endif

.if defined(PACKAGING) && empty(SUBPACKAGE)
WANTLIB+=	wrap c pthread
.endif

MAN8=		fetchnews idled master imapd
SIEVEREF=	lib/imapoptions man/imapd.conf.5 \
		tools/masssievec tools/rehash tools/translatesieve \
		tools/upgradesieve doc/text/install-upgrade

pre-build:
.for i in ${MAN8}
	perl -pi -e "s,${i}\(8\),cyrus-${i}\(8\),g" ${WRKSRC}/man/*.[0-9]
.endfor
	cd ${WRKSRC} && perl -pi -e "s,/usr/sieve,/var/sieve,g" ${SIEVEREF}

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
