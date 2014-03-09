# $OpenBSD: Makefile,v 1.72 2014/03/09 19:59:41 jasper Exp $

COMMENT=		X11/Motif GUI text editor

DISTNAME=		nedit-5.5
P_V=			0.5
REVISION=		20
EPOCH=			0
DISTFILES=		${DISTNAME}-src${EXTRACT_SUFX} \
			nedit_patterns-${P_V}.tgz:0
PATCHFILES=		wrapmark.diff:0
CATEGORIES=		editors x11

MASTER_SITES=		http://www.nedit.org/ftp/v5_5/ \
			${MASTER_SITE_SOURCEFORGE:=nedit/}
MASTER_SITES0=		http://distfiles.nl/

DIST_SUBDIR=		nedit

HOMEPAGE=		http://www.nedit.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xmu Xpm Xrender Xt
WANTLIB += c expat fontconfig freetype m z Xm

MODULES=		converters/libiconv

LIB_DEPENDS+=		x11/openmotif

USE_GROFF =		Yes
ALL_TARGET=		openbsd

NO_TEST=		Yes

CFLAGS+=		-DBUILD_UNTESTED_NEDIT
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nedit ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nc ${PREFIX}/bin/ncl
	${INSTALL_MAN} ${WRKSRC}/doc/nedit.man ${PREFIX}/man/man1/nedit.1
	${INSTALL_MAN} ${WRKSRC}/doc/nc.man ${PREFIX}/man/man1/ncl.1
	${INSTALL_DATA} ${WRKSRC}/doc/NEdit.ad \
		${PREFIX}/lib/X11/app-defaults/NEdit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	${INSTALL_DATA} ${WRKSRC}/doc/nedit.doc ${PREFIX}/share/doc/nedit
	${INSTALL_DATA_DIR} ${PREFIX}/share/nedit/patterns
	${INSTALL_DATA} ${WRKDIR}/nedit_patterns-${P_V}/*.pats \
		${PREFIX}/share/nedit/patterns/

.include <bsd.port.mk>
