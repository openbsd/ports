# $OpenBSD: Makefile,v 1.5 2000/10/16 23:23:10 brad Exp $

DISTNAME=	imap-4.7c2
PKGNAME=	c-client-4.7c2
CATEGORIES=	mail devel
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/old/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

SHLIB=	libc-client.so.1.0
SUBST_VARS=	SHLIB

MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" SHLIB="${SHLIB}"

ALL_TARGET=	bso

WRKDIST=	${WRKDIR}/imap-4.7c

HEADERS=	dummy.h env.h env_unix.h fdstring.h flstring.h fs.h ftl.h \
		imap4r1.h linkage.c linkage.h mail.h misc.h nl.h nntp.h \
		osdep.h pop3.h rfc822.h smtp.h tcp.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} ${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKSRC}/c-client/c-client.a ${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKSRC}/c-client/${SHLIB} ]; then \
	   ${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
