# $OpenBSD: Makefile,v 1.2 2003/03/29 23:02:25 naddy Exp $

COMMENT=	"portable CVS repository synchronization utility"

DISTNAME=	cvsync-0.17.1
CATEGORIES=	net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.daemon-systems.org/cvsync/ \
		ftp://ftp.allbsd.org/pub/cvsync/
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
MAKE_ENV=	CVSYNC_DEFAULT_CONFIG="${SYSCONFDIR}/cvsync.conf" \
		CVSYNCD_DEFAULT_CONFIG="${SYSCONFDIR}/cvsyncd.conf" \
		BINOWN="${BINOWN}" BINGRP="${BINGRP}" BINMODE="${BINMODE}"

EXAMPLESDIR=	${PREFIX}/share/examples/cvsync

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/cvsync.conf ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/cvsyncd.conf ${EXAMPLESDIR}

.include <bsd.port.mk>
