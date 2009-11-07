# $OpenBSD: Makefile,v 1.62 2009/11/07 12:53:17 ajacoutot Exp $

COMMENT-server=	University of Washington IMAP4rev1/POP2/POP3 mail servers
COMMENT-mailutil=University of Washington IMAP4rev1/POP2/POP3 mail utility
COMMENT-c-client=University of Washington's c-client mail access routines

V=		2007e
DISTNAME=	imap-${V}

PKGNAME-server=	imap-uw-${V}p0
PKGNAME-mailutil=mailutil-uw-${V}p0
PKGNAME-c-client=c-client-${V}p0

#WRKDIST=	${WRKDIR}/imap-2007b

CATEGORIES=	mail
CATEGORIES-c-client=mail devel

SHARED_LIBS=	c-client 5.1

EXTRACT_SUFX=	.tar.Z

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.cac.washington.edu/imap/old/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/old/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	asn1 c com_err crypto des gssapi kafs krb5 ssl
WANTLIB-c-client=

ALL_TARGET=	bso
SHLIB=		libc-client.so.${LIBc-client_VERSION}
MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" EXTRAAUTHENTICATORS="gss" IP=6 \
		SSLTYPE="unix.nopwd" SHLIB="${SHLIB}" SHLIBNAME=${SHLIB} \
		CC="${CC}"

MULTI_PACKAGES=	-server -mailutil -c-client
SUBPACKAGE?=	-server

NO_REGRESS=	Yes

HEADERS=	c-client.h dummy.h env.h env_unix.h fdstring.h flockcyg.h \
		flocksim.h flstring.h fs.h ftl.h imap4r1.h linkage.c linkage.h \
		mail.h misc.h netmsg.h newsrc.h nl.h nntp.h osdep.h pseudo.h \
		rfc822.h smtp.h sslio.h tcp.h tcp_unix.h unix.h utf8.h \
		utf8aux.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/mlock/mlock ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/dmail/dmail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/mailutil/mailutil ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/tmail/tmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/imapd/imapd.8 ${PREFIX}/man/man8/imapd.8
	${INSTALL_MAN} ${WRKSRC}/src/ipopd/ipopd.8 ${PREFIX}/man/man8/ipopd.8
	${INSTALL_MAN} ${WRKSRC}/src/dmail/dmail.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/src/mailutil/mailutil.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/src/tmail/tmail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imap-uw
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imap-uw
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/imap-uw/README.OpenBSD
	${INSTALL_DATA} ${FILESDIR}/c-client.cf \
		${PREFIX}/share/examples/imap-uw
	tar -C ${WRKSRC}/docs -cf - . | \
		tar -C ${PREFIX}/share/doc/imap-uw -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/imap-uw
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} \
		${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKSRC}/c-client/c-client.a \
		${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKSRC}/c-client/${SHLIB} ]; then \
		${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
