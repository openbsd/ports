# $OpenBSD: Makefile,v 1.9 2006/07/17 22:00:10 espie Exp $

COMMENT=		'X11 file manager. Dockable in Window Maker'

DISTNAME=		ASFiles-1.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c m

MASTER_SITES=		${MASTER_SITE_AFTERSTEP:=apps/ASFiles/}

LIB_DEPENDS=		Dnd::x11/libdnd

FAKE_FLAGS=		NORMAL_INSTALL="" \
			mandir=${WRKINST}${PREFIX}/man

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

post-configure:
.for d in . src src/bitmaps src/pixmaps src/external src/regexp pixmaps bitmaps
	@perl -pi -e 's|^(prefix[ \t]*=).*$$|\1 \$${PREFIX}|' ${WRKSRC}/${d}/Makefile
.endfor

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/Files.ad ${PREFIX}/lib/X11/app-defaults/Files

.include <bsd.port.mk>
