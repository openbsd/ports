# $OpenBSD: Makefile,v 1.80 2019/07/12 20:46:06 sthen Exp $

COMMENT=		a fast, compact Motif/X11 plain text editor

DISTNAME=		nedit-5.7
P_V=			0.5
EPOCH=			0
DISTFILES=		${DISTNAME}-src${EXTRACT_SUFX} \
			nedit_patterns-${P_V}.tgz:0

CATEGORIES=		editors x11
HOMEPAGE =		https://sourceforge.net/projects/nedit/
MAINTAINER =		Alessandro De Laurenzis <just22@atlantide.t28.net>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nedit/}
MASTER_SITES0=		http://distfiles.nl/

DIST_SUBDIR=		nedit

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xmu Xpm Xrender Xt
WANTLIB += c expat fontconfig freetype iconv m z Xm

LIB_DEPENDS+=		converters/libiconv \
			x11/motif

ALL_TARGET=		openbsd docs

NO_TEST=		Yes

MAKE_ENV+=		MOTIFLIB='-L${LOCALBASE}/lib -lXm'

do-install:
	sed -i "s/^\.TH NC/&L/" ${WRKSRC}/doc/nc.man
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
