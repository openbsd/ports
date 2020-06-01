# $OpenBSD: Makefile,v 1.123 2020/06/01 07:25:32 giovanni Exp $

COMMENT-main=		imap server for maildir format mailboxes
COMMENT-pop3=		pop3 server for maildir format mailboxes

V=			5.0.10
DISTNAME=		courier-imap-${V}
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-pop3=	courier-pop3-${V}
FULLPKGPATH-pop3=	mail/courier-imap,-pop3

CATEGORIES=		mail

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.courier-mta.org/imap/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc

WANTLIB=		c courierauth courierauthcommon courierauthsasl courier-unicode
WANTLIB+=		gdbm iconv intl idn m pcre ${COMPILER_LIBCXX}
WANTLIB-pop3=		c courierauth courierauthcommon courierauthsasl courier-unicode
WANTLIB-pop3+=		iconv intl idn m pcre ${COMPILER_LIBCXX}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

# AM_PROG_LIBTOOL, aclocal is run during build
BUILD_DEPENDS +=	devel/libtool \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			OPENSSL=/usr/bin/openssl \
			ac_cv_lib_db_dbopen=no \
			ac_cv_lib_db_db_env_create=no

LIB_DEPENDS=		mail/courier-authlib \
			devel/libidn \
			devel/pcre

EXAMPLE_DIR=		${PREFIX}/share/examples/courier
SYSCONFDIR=		/etc/courier

CONFIGURE_ARGS=		--sbindir=${PREFIX}/sbin \
			--datadir=${PREFIX}/sbin \
			--prefix=${PREFIX} \
			--bindir=${PREFIX}/bin \
			--mandir=${PREFIX}/man \
			--enable-static \
			--disable-root-check \
			--with-dirsync \
			--enable-mimecharset=iso-8859-1 \
			--enable-unicode \
			--with-locking-method=fcntl \
			--with-mailuser=_courier \
			--with-piddir=${BASELOCALSTATEDIR}/run/courier \
			--with-makedatprog=${TRUEPREFIX}/libexec/makedat \
			--with-db=gdbm \
			--with-certsdir=/etc/ssl \
			--cache-file=${WRKDIR}/courier-imap.cache \
			--with-notice=unicode

DOCS=			AUTHORS INSTALL \
			NEWS libs/imap/ChangeLog \
			libs/imap/README libs/imap/README.proxy \
			libs/maildir/README.imapkeywords.html \
			libs/maildir/README.maildirfilter.html \
			libs/maildir/README.maildirquota.txt \
			libs/maildir/README.sharedfolders.txt \
			libs/tcpd/README.couriertls

FLAVORS=		no_trashquota imap_bugs
FLAVOR?=

.if ${FLAVOR:Mno_trashquota}
CONFIGURE_ARGS+=	--without-trashquota
.else
CONFIGURE_ARGS+=	--with-trashquota
.endif

.if ${FLAVOR:Mimap_bugs}
CONFIGURE_ARGS+=	--enable-workarounds-for-imap-client-bugs
.else
CONFIGURE_ARGS+=	--disable-workarounds-for-imap-client-bugs
.endif

MULTI_PACKAGES=		-main -pop3

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/gettext,-runtime \
			databases/gdbm \
			mail/courier-unicode>=2.1

RUN_DEPENDS-pop3=	mail/courier-imap,-main

WANTLIB-main=		${WANTLIB} ssl crypto

CNFFILES=		etc/courier/imapd-ssl.dist etc/courier/imapd.dist \
			etc/courier/pop3d-ssl.dist etc/courier/pop3d.dist \
			etc/courier/imapd.cnf etc/courier/pop3d.cnf \
			etc/courier/quotawarnmsg.example

# Regression tests need ulimit -p 256 and are not compatible
# with no_trashquota and imap_bugs flavors.
# If those flavors are not built you can do regress tests with
# ulimit -p 256
# make test NO_TEST=NO
NO_TEST=		Yes

post-extract:
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/urandom,g' \
	    ${WRKSRC}/libs/imap/imapd.cnf.openssl.in
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/urandom,g' \
	    ${WRKSRC}/libs/imap/pop3d.cnf.openssl.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courier
	${INSTALL_DATA} ${WRKSRC}/libs/imap/README \
	    ${PREFIX}/share/doc/courier/README.imap.txt
.	for i in ${DOCS}
	     ${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/courier
.	endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier
.	for i in ${CNFFILES}
	    mv ${WRKINST}/${i} ${EXAMPLE_DIR}
.	endfor
	@rmdir ${WRKINST}/etc/courier/shared ${WRKINST}/etc/courier/shared.tmp

.include <bsd.port.mk>
