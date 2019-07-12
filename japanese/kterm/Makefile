# $OpenBSD: Makefile,v 1.38 2019/07/12 20:47:15 sthen Exp $

COMMENT=	Japanese-capable xterm

VERSION=	6.2.0
DISTNAME=	kterm-${VERSION}
PKGNAME=	ja-kterm-${VERSION}
REVISION=	9
CATEGORIES=	japanese x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

# License: X
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt curses c \
		util

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	kterm-620-0213-20010706.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=imake
MAKE_FLAGS=	CDEBUGFLAGS=-O2

FLAVORS=xaw3d tek
FLAVOR?=
.if ${FLAVOR:Mxaw3d}
WANTLIB += Xaw3d
LIB_DEPENDS=	x11/Xaw3d
MAKE_ENV=	EXTRA_DEFINES=-DKTERM_XAW3D
.endif

.if ${FLAVOR:Mtek}
pre-configure:
	perl -pi.bak -e 's/define KTERM_NOTEK/undef KTERM_NOTEK/;' \
	  ${WRKSRC}/kterm.h
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
