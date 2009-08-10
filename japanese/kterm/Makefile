# $OpenBSD: Makefile,v 1.26 2009/08/10 06:32:05 kili Exp $

COMMENT=	Japanese-capable xterm

VERSION=	6.2.0
DISTNAME=	kterm-${VERSION}
PKGNAME=	ja-kterm-${VERSION}p4
CATEGORIES=	japanese x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

# License: X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xp Xpm Xt curses c \
		pthread-stubs util xcb

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	kterm-620-0213-20010706.diff.gz:0
PATCH_DIST_STRIP=	-p1

USE_X11=	Yes
CONFIGURE_STYLE=imake
MAKE_FLAGS=	CDEBUGFLAGS=-O2

FLAVORS=xaw3d tek
FLAVOR?=
.if ${FLAVOR:L:Mxaw3d}
LIB_DEPENDS=	Xaw3d.>=6.1::x11/Xaw3d
MAKE_ENV=	EXTRA_DEFINES=-DKTERM_XAW3D
.endif

.if ${FLAVOR:L:Mtek}
pre-configure:
	perl -pi.bak -e 's/define KTERM_NOTEK/undef KTERM_NOTEK/;' \
	  ${WRKSRC}/kterm.h
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
