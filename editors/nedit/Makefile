# $OpenBSD: Makefile,v 1.9 2000/03/16 22:32:35 turan Exp $
# $FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp $

DISTNAME=	nedit-5.0.2
CATEGORIES=	editors x11
NEED_VERSION=	1.223

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/ \
		ftp://ftp.fnal.gov/KITS/pub/nedit/v5_0_2/contrib/
DISTFILES=	nedit_source.tar.gz nedit.app-defaults
EXTRACT_ONLY=	nedit_source.tar.gz
WRKDIST=	${WRKDIR}

LIB_DEPENDS=	Xm.1.:x11/lesstif

USE_X11=	Yes

ALL_TARGET=	openbsd_nedit

post-extract:
	@cp ${DISTDIR}/nedit.app-defaults ${WRKSRC}/NEdit.ad

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/source/nedit ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/source/nc ${PREFIX}/bin/ncl
	@${INSTALL_MAN} ${WRKSRC}/nedit.man ${PREFIX}/man/man1/nedit.1
	@${INSTALL_MAN} ${WRKSRC}/nc.man ${PREFIX}/man/man1/ncl.1
	@${INSTALL_DATA} ${WRKSRC}/NEdit.ad ${PREFIX}/lib/X11/app-defaults/NEdit
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	@${INSTALL_DATA} ${WRKSRC}/nedit.doc ${PREFIX}/share/doc/nedit

.include <bsd.port.mk>
