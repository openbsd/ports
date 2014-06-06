# $OpenBSD: Makefile,v 1.48 2014/06/06 15:53:15 sthen Exp $

COMMENT=	CVS repository synchronization utility

DISTNAME=	cvsync-0.24.19
REVISION=	3
CATEGORIES=	net
HOMEPAGE=	http://www.cvsync.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pthread z

MASTER_SITES=	http://www.cvsync.org/dist/ \
		ftp://ftp.allbsd.org/pub/cvsync/

USE_GMAKE=	Yes
MAKE_ENV=	CVSYNC_DEFAULT_CONFIG="${SYSCONFDIR}/cvsync.conf" \
		CVSYNCD_DEFAULT_CONFIG="${SYSCONFDIR}/cvsyncd.conf" \
		INSTALL_MAN_OPTS="-o ${MANOWN} -g ${MANGRP} -m ${MANMODE}" \
		INSTALL_BIN_OPTS="-o ${BINOWN} -g ${BINGRP} -m ${BINMODE} ${INSTALL_STRIP}"

NO_TEST=	Yes
EXAMPLESDIR=	${PREFIX}/share/examples/cvsync

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/*.conf ${EXAMPLESDIR}

.include <bsd.port.mk>
