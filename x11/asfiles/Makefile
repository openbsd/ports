# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:08 sthen Exp $

COMMENT=		X11 file manager. Dockable in Window Maker

DISTNAME=		ASFiles-1.0
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c m Dnd

MASTER_SITES=		${MASTER_SITE_AFTERSTEP:=apps/ASFiles/}

LIB_DEPENDS=		x11/libdnd

FAKE_FLAGS=		NORMAL_INSTALL="" \
			mandir=${WRKINST}${PREFIX}/man

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

post-configure:
.for d in . src src/bitmaps src/pixmaps src/external src/regexp pixmaps bitmaps
	@perl -pi -e 's|^(prefix[ \t]*=).*$$|\1 \$${PREFIX}|' ${WRKSRC}/${d}/Makefile
.endfor

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/Files.ad ${PREFIX}/lib/X11/app-defaults/Files

.include <bsd.port.mk>
