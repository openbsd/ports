# $OpenBSD: Makefile,v 1.1.1.1 2000/07/18 21:52:43 jakob Exp $

DISTNAME=	imap-4.7c2
PKGNAME=	c-client-4.7c2
CATEGORIES=	mail devel
NEED_VERSION=	1.302

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/ \
		ftp://ftp.cac.washington.edu/imap/old/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	${WRKDIR}/imap-4.7c
ALL_TARGET=	bso

HEADERS=	dummy.h env.h env_unix.h fdstring.h flstring.h fs.h ftl.h \
		imap4r1.h linkage.c linkage.h mail.h misc.h nl.h nntp.h \
		osdep.h pop3.h rfc822.h smtp.h tcp.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
.for f in ${HEADERS}
	${INSTALL_DATA} ${WRKSRC}/c-client/${f} ${PREFIX}/include/c-client
.endfor
	${INSTALL_DATA} ${WRKSRC}/c-client/c-client.a ${PREFIX}/lib/libc-client.a

.include <bsd.port.mk>
