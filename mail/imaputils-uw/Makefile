# $OpenBSD: Makefile,v 1.8 2002/07/15 07:16:43 pvalchev Exp $

COMMENT=	University of Washington IMAP utilities

DISTNAME=	imap-utils
PKGNAME=	imaputils-uw-20020402
CATEGORIES=	mail
NEED_VERSION=	1.489

HOMEPAGE=	http://www.washington.edu/imap/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/imap/
EXTRACT_SUFX=	.tar.Z
DIST_SUBDIR=	${PKGNAME}

LIB_DEPENDS=	c-client.3:c-client->=4.40p1:mail/c-client

WRKDIST=	${WRKDIR}
SUBDIRS=	chkmail dmail icat ifrom imapcopy imapxfer \
		mbxcopy mbxcreat mbxcvt tmail

CFLAGS+=	-I${LOCALBASE}/include/c-client
LIBS+=		-L${LOCALBASE}/lib -lc-client \
		-lssl -lcrypto -ldes \
		-lkrb -lkafs -lgssapi -lkrb5 -lasn1 -lcom_err

do-build:
.for prog in ${SUBDIRS}
	cd ${WRKDIST}/${prog}; \
	${CC} ${CFLAGS} ${LDFLAGS} -o ${prog} ${prog}.c ${LIBS}
.endfor

do-install:
.for prog in ${SUBDIRS}
	${INSTALL_PROGRAM} ${WRKDIST}/${prog}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/${prog}/${prog}.1 ${PREFIX}/man/man1
.endfor
	@cd ${PREFIX}/bin; ln -sf imapcopy imapmove
	@cd ${PREFIX}/bin; ln -sf mbxcopy mbxmove
	@cd ${PREFIX}/man/man1; ln -sf imapcopy.1 imapmove.1
	@cd ${PREFIX}/man/man1; ln -sf mbxcopy.1 mbxmove.1

.include <bsd.port.mk>
