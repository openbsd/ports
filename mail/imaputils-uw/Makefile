# $OpenBSD: Makefile,v 1.3 2001/09/28 06:11:11 jakob Exp $

COMMENT=	University of Washington IMAP utilities

DISTNAME=	imap-utils
PKGNAME=	imaputils-uw-20001219
CATEGORIES=	mail
NEED_VERSION=	1.444

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/
EXTRACT_SUFX=	.tar.Z
DIST_SUBDIR=	${PKGNAME}

LIB_DEPENDS=	c-client.2::mail/c-client

WRKDIST=	${WRKDIR}
SUBDIRS=	chkmail dmail icat ifrom imapcopy imapxfer \
		mbxcopy mbxcreat mbxcvt tmail

CFLAGS+=	-I${PREFIX}/include/c-client
LIBS+=		-L${PREFIX}/lib -lc-client \
		-lssl -lcrypto \
		-lgssapi -lkrb5 -lasn1 -lcom_err

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
	ln -sf imapcopy.1 ${PREFIX}/man/man1/imapmove.1
	ln -sf mbxcopy.1 ${PREFIX}/man/man1/mbxmove.1

.include <bsd.port.mk>
