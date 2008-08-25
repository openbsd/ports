# $OpenBSD: Makefile,v 1.40 2008/08/25 17:13:22 naddy Exp $

COMMENT=	portable CVS repository synchronization utility

DISTNAME=	cvsync-0.24.19
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
HOMEPAGE=	http://www.cvsync.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread z

MASTER_SITES=	ftp://ftp.cvsync.org/pub/cvsync/ \
		ftp://ftp.allbsd.org/pub/cvsync/

USE_GMAKE=	Yes
MAKE_ENV=	CVSYNC_DEFAULT_CONFIG="${SYSCONFDIR}/cvsync.conf" \
		CVSYNCD_DEFAULT_CONFIG="${SYSCONFDIR}/cvsyncd.conf" \
		INSTALL_MAN_OPTS="-o ${MANOWN} -g ${MANGRP} -m ${MANMODE}" \
		INSTALL_BIN_OPTS="-o ${BINOWN} -g ${BINGRP} -m ${BINMODE} ${INSTALL_STRIP}"

NO_REGRESS=	Yes
EXAMPLESDIR=	${PREFIX}/share/examples/cvsync

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
