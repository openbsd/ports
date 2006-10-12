# $OpenBSD: Makefile,v 1.33 2006/10/12 08:23:25 jakob Exp $

COMMENT=	"University of Washington's c-client mail access routines"
NO_REGRESS=	Yes

VERSION=	4.64
DISTNAME=	pine${VERSION}
PKGNAME=	c-client-${VERSION}p0
SHARED_LIBS=	c-client	4.0
CATEGORIES=	mail devel
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	kerberos
FLAVOR?=

SHLIB=		libc-client.so.${LIBc-client_VERSION}

MAKE_FLAGS=	EXTRACFLAGS="${CFLAGS}" SHLIB="${SHLIB}" \
		SSLTYPE="unix" CC="${CC}"

.if ${FLAVOR:L:Mkerberos}
MAKE_FLAGS+=	EXTRAAUTHENTICATORS="gss"
.endif

ALL_TARGET=	bso

WRKDIST=	${WRKDIR}/${DISTNAME}/imap

HEADERS=	c-client.h env.h env_unix.h flstring.h fs.h ftl.h imap4r1.h \
		linkage.c linkage.h mail.h misc.h nl.h nntp.h osdep.h \
		rfc822.h smtp.h tcp.h utf8.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} ${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKSRC}/c-client/c-client.a ${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKSRC}/c-client/${SHLIB} ]; then \
	   ${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
