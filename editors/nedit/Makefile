# $OpenBSD: Makefile,v 1.24 2002/03/21 20:46:26 espie Exp $
# $FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp $

COMMENT=	"X11/Motif GUI text editor"

DISTNAME=	nedit-5.2
CATEGORIES=	editors x11
NEED_VERSION=	1.515

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.nedit.org/

DISTFILES=	${DISTNAME}-src${EXTRACT_SUFX}

MASTER_SITES=	http://nedit.org/ftp/v5_2/ \
		ftp://ftp.openbsd.ru/pub/OpenBSD/distfiles/

USE_MOTIF=	any

ALL_TARGET=	openbsd

post-extract:
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/makefiles

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nedit ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nc ${PREFIX}/bin/ncl
	${INSTALL_MAN} ${WRKSRC}/doc/nedit.man ${PREFIX}/man/man1/nedit.1
	${INSTALL_MAN} ${WRKSRC}/doc/nc.man ${PREFIX}/man/man1/ncl.1
	${INSTALL_DATA} ${WRKSRC}/doc/NEdit.ad ${PREFIX}/lib/X11/app-defaults/NEdit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	${INSTALL_DATA} ${WRKSRC}/doc/nedit.doc ${PREFIX}/share/doc/nedit

.include <bsd.port.mk>
