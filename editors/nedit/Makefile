# $OpenBSD: Makefile,v 1.15 2000/10/22 14:03:10 espie Exp $
# $FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp $

DISTNAME=	nedit-5.1.1
CATEGORIES=	editors x11
NEED_VERSION=	1.230

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.nedit.org/

DISTFILES=	${DISTNAME}-src${EXTRACT_SUFX} nedit-5.1.app-defaults:0
EXTRACT_ONLY=	${DISTNAME}-src${EXTRACT_SUFX}
DIST_SUBDIR=	nedit

MASTER_SITES=	ftp://ftp.nedit.org/pub/v5_1_1/
MASTER_SITES0=	ftp://ftp.nedit.org/pub/contrib/misc/

LIB_DEPENDS=	Xm.1.::x11/lesstif

USE_X11=	Yes

ALL_TARGET=	openbsd

post-extract:
	@cp ${DISTDIR}/${DIST_SUBDIR}/nedit-5.1.app-defaults ${WRKSRC}/NEdit.ad
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/makefiles

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/source/nedit ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/source/nc ${PREFIX}/bin/ncl
	${INSTALL_MAN} ${WRKSRC}/nedit.man ${PREFIX}/man/man1/nedit.1
	${INSTALL_MAN} ${WRKSRC}/nc.man ${PREFIX}/man/man1/ncl.1
	${INSTALL_DATA} ${WRKSRC}/NEdit.ad ${PREFIX}/lib/X11/app-defaults/NEdit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	${INSTALL_DATA} ${WRKSRC}/nedit.doc ${PREFIX}/share/doc/nedit

.include <bsd.port.mk>
