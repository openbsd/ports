# $OpenBSD: Makefile,v 1.14 2009/08/10 14:13:09 naddy Exp $

COMMENT=		wm-dockapp; shows rotating 3d-object and CPU load

DISTNAME=		wmcube-gdk-0.98p2
PKGNAME=		wmcube-gdk-0.98.2
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m Xi glib gmodule iconv intl \
			pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}software/

LIB_DEPENDS=		gtk.>=1,gdk.>=1::x11/gtk+

USE_X11=		Yes
NO_REGRESS=		Yes

MAKE_FILE=		Makefile.OPENBSD

3D_OBJECTS=		${PREFIX}/share/wmcube

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcube ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3dObjects/* ${3D_OBJECTS}

.include <bsd.port.mk>
