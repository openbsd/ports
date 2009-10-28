# $OpenBSD: Makefile,v 1.56 2009/10/28 14:20:19 giovanni Exp $

COMMENT-main=		imap server for maildir format mailboxes
COMMENT-pop3=		pop3 server for maildir format mailboxes

V=			4.6.0
DISTNAME=		courier-imap-${V}
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-pop3=	courier-pop3-${V}

CATEGORIES=		mail

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.courier-mta.org/imap/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=		courierauthsasl.>=0,courierauth.>=0::mail/courier-authlib

COURIERSTATE=           /var/run/courier
EXAMPLE_DIR=		${PREFIX}/share/examples/courier
SUBST_VARS=		COURIERSTATE
SYSCONFDIR=		/etc/courier

CONFIGURE_ARGS=		--sbindir=${PREFIX}/sbin \
			--datadir=${PREFIX}/sbin \
			--localstatedir=${COURIERSTATE} \
			--prefix=${PREFIX} \
			--bindir=${PREFIX}/bin \
			--mandir=${PREFIX}/man \
			--enable-static \
			--disable-root-check \
			--with-dirsync \
			--with-random=/dev/arandom \
			--enable-mimecharset=iso-8859-1 \
			--enable-unicode \
			--with-locking-method=fcntl \
			--with-mailuser=_courier \
			--with-piddir=${COURIERSTATE} \
			--with-makedatprog \
			--with-db=gdbm \
			--cache-file=${WRKDIR}/courier-imap.cache

CONFIGURE_ENV+=		OPENSSL=/usr/sbin/openssl

DOCS=			AUTHORS INSTALL \
			NEWS imap/ChangeLog \
			imap/README imap/README.proxy \
			maildir/README.imapkeywords.html \
			maildir/README.maildirfilter.html \
			maildir/README.maildirquota.txt \
			maildir/README.sharedfolders.txt \
			tcpd/README.couriertls

FLAVORS=		no_trashquota imap_bugs
FLAVOR?=

.if ${FLAVOR:L:Mno_trashquota}
CONFIGURE_ARGS+=	--without-trashquota
.else
CONFIGURE_ARGS+=	--with-trashquota
.endif

.if ${FLAVOR:L:Mimap_bugs}
CONFIGURE_ARGS+=	--enable-workarounds-for-imap-client-bugs
.else
CONFIGURE_ARGS+=	--disable-workarounds-for-imap-client-bugs
.endif

MULTI_PACKAGES=		-main -pop3

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			gdbm.>=3::databases/gdbm
WANTLIB-main=		${WANTLIB} ssl crypto

CNFFILES=		etc/courier/imapd-ssl.dist etc/courier/imapd.dist \
			etc/courier/pop3d-ssl.dist etc/courier/pop3d.dist \
			etc/courier/imapd.cnf etc/courier/pop3d.cnf \
			etc/courier/quotawarnmsg.example

# Regression tests need ulimit -p 256 and are not compatible
# with no_trashquota and imap_bugs flavors.
# If those flavors are not built you can do regress tests with
# ulimit -p 256
# make regress NO_REGRESS=NO
NO_REGRESS=		Yes

post-extract:
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/arandom,g' \
	    ${WRKSRC}/imap/imapd.cnf.openssl.in
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/arandom,g' \
	    ${WRKSRC}/imap/pop3d.cnf.openssl.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courier
	${INSTALL_DATA} ${WRKSRC}/unicode/README \
	    ${PREFIX}/share/doc/courier/README.unicode.txt
	${INSTALL_DATA} ${WRKSRC}/imap/README \
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
