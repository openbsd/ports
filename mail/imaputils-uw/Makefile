# $OpenBSD: Makefile,v 1.1.1.1 2001/02/18 22:06:39 jakob Exp $

DISTNAME=	imap-utils

PKGNAME=	imaputils-uw-20001219
CATEGORIES=	mail
NEED_VERSION=	1.302

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/
EXTRACT_SUFX=	.tar.Z
DIST_SUBDIR=	${PKGNAME}

LIB_DEPENDS=	c-client.2.1::mail/c-client

WRKDIST=	${WRKDIR}
SUBDIRS=	chkmail dmail icat ifrom imapcopy imapxfer \
		mbxcopy mbxcreat mbxcvt tmail

CFLAGS+=	-I${PREFIX}/include/c-client
LIBS+=		-L${PREFIX}/lib -lc-client -lssl -lcrypto

do-build:
.for prog in ${SUBDIRS}
	(cd ${WRKDIST}/${prog}; \
	${CC} ${CFLAGS} ${LDFLAGS} -o ${prog} ${prog}.c ${LIBS})
.endfor

do-install:
.for prog in ${SUBDIRS}
	${INSTALL_PROGRAM} ${WRKDIST}/${prog}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/${prog}/${prog}.1 ${PREFIX}/man/man1
.endfor
	ln -sf imapcopy ${PREFIX}/bin/imapmove
	ln -sf mbxcopy ${PREFIX}/bin/mbxmove

.include <bsd.port.mk>
