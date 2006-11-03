# $OpenBSD: Makefile,v 1.50 2006/11/03 16:19:56 mbalmer Exp $

COMMENT=		"imap server for maildir format mailboxes"
COMMENT-pop3=		"pop3 server for maildir format mailboxes"

DISTNAME=		courier-imap-4.1.1
FULLPKGNAME-pop3=	${DISTNAME:S/imap/pop3/}

CATEGORIES=		mail

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.courier-mta.org/imap/
MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
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
SYSCONFDIR=/etc/courier

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

MULTI_PACKAGES=		-pop3
SUBPACKAGE?=
.if $(SUBPACKAGE) !=	"-pop3"
LIB_DEPENDS+=		gdbm.>=3::databases/gdbm
CONFIGURE_ARGS+=	--with-db=gdbm
.endif

.if defined(PACKAGING) && $(SUBPACKAGE) != "-pop3"
WANTLIB+=               ssl crypto
.endif

CNFFILES=		etc/courier/imapd-ssl.dist etc/courier/imapd.dist \
			etc/courier/pop3d-ssl.dist etc/courier/pop3d.dist \
			etc/courier/imapd.cnf etc/courier/pop3d.cnf \
			etc/courier/quotawarnmsg.example

post-extract:
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/arandom,g' \
	    ${WRKSRC}/imap/imapd.cnf.in
	@perl -pi -e 's,\@datadir\@\/imapd.rand,\/dev\/arandom,g' \
	    ${WRKSRC}/imap/pop3d.cnf.in

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
