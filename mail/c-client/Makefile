# $OpenBSD: Makefile,v 1.11 2001/02/18 15:24:39 jakob Exp $

DISTNAME=	imap-2000c
PKGNAME=	c-client-2000c
CATEGORIES=	mail devel
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.sunet.se/pub/unix/mail/imap/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

SHLIB=	libc-client.so.2.1
SUBST_VARS=	SHLIB

MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" SHLIB="${SHLIB}" \
		SPECIALAUTHENTICATORS="ssl"

ALL_TARGET=	bso

HEADERS=	c-client.h env.h env_unix.h fs.h ftl.h imap4r1.h \
		linkage.c linkage.h mail.h misc.h nl.h nntp.h osdep.h \
		pop3.h rfc822.h smtp.h tcp.h utf8.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} ${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKSRC}/c-client/c-client.a ${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKSRC}/c-client/${SHLIB} ]; then \
	   ${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=	Yes
.endif
