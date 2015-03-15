# $OpenBSD: Makefile,v 1.87 2015/03/15 08:51:07 ajacoutot Exp $

# WARNING: mmap(2) is not fully POSIX on OpenBSD so cyrus needs to
# map_refresh on every lock which will incure a performance penalty
# under high load. See this bugreport for details:
#    http://bugzilla.cyrusimap.org/show_bug.cgi?id=3370

SHARED_ONLY=	Yes

COMMENT=	Cyrus IMAP server

V=		2.5.0
DISTNAME=	cyrus-imapd-${V}

SHARED_LIBS +=	cyrus                     0.0 # 0.0
SHARED_LIBS +=	cyrus_imap                0.0 # 0.0
SHARED_LIBS +=	cyrus_min                 0.0 # 0.0
SHARED_LIBS +=	cyrus_sieve               0.0 # 0.0

CATEGORIES=	mail

HOMEPAGE=	http://www.cyrusimap.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYRIGHT file in package
PERMIT_PACKAGE_CDROM=	yes

WANTLIB += c crypto db jansson m pcre pcreposix pthread sasl2
WANTLIB += ssl uuid z

MASTER_SITES=	http://cyrusimap.org/releases/ \
		ftp://ftp.cyrusimap.org/cyrus-imapd/ \
		ftp://ftp.cyrusimap.org/cyrus-imapd/OLD-VERSIONS/

LIB_DEPENDS=	databases/db/v4 \
		devel/jansson \
		devel/pcre \
		security/cyrus-sasl2 \
		sysutils/e2fsprogs

NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-cyrus-prefix=${PREFIX}/cyrus \
		--with-bdb-libdir=${LOCALBASE}/lib/db4 \
		--with-bdb-incdir=${LOCALBASE}/include/db4 \
		--with-com_err=${LOCALBASE} \
		--with-sasl=${LOCALBASE} \
		--with-cyrus-group=_cyrus \
		--with-cyrus-user=_cyrus \
		--with-syslogfacility=MAIL \
		--enable-autocreate \
		--enable-idled \
		--enable-murder \
		--enable-nntp

# XXX FLAVOR
CONFIGURE_ARGS+=--without-snmp

# XXX notyet; FLAVOR
CONFIGURE_ARGS+=--without-clamav \
		--disable-http

SENDMAILREF=	lib/imapoptions lib/imapopts.c man/imapd.conf.5
SIEVEREF=	lib/imapoptions man/imapd.conf.5 \
		tools/masssievec tools/rehash tools/translatesieve \
		tools/upgradesieve doc/text/install-upgrade

pre-configure:
.for i in lib/imapoptions man/imapd.conf.5
	perl -pi -e "s,/usr/cyrus,${PREFIX}/cyrus,g;" \
		-e "s,/usr/local/bin/gdb,/usr/bin/gdb,g" \
		${WRKSRC}/${i}
.endfor

.for i in ${SENDMAILREF}
	perl -pi -e "s,/usr/lib/sendmail,/usr/sbin/sendmail,g" ${WRKSRC}/${i}
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
	${INSTALL_DATA_DIR} ${PREFIX}/cyrus/man
	mv ${PREFIX}/man/man* ${PREFIX}/cyrus/man/
	rm -rf ${PREFIX}/libdata/perl5/${MACHINE_ARCH}-openbsd \
		${PREFIX}/share/doc/cyrus-imapd/text/{.deps,.gitignore,.libs} \
		${PREFIX}/share/examples/cyrus-imapd/tools/vzic

.include <bsd.port.mk>
