# $OpenBSD: Makefile,v 1.1.1.1 2001/08/28 14:32:49 wilfried Exp $

COMMENT=		'wm-dockapp; shows rotating 3d-object and CPU load'

DISTNAME=		wmcube-gdk
PKGNAME=		wmcube-gdk-0.0
CATEGORIES=		sysutils x11 x11/windowmaker
NEED_VERSION=		1.448

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gtk.1.2::x11/gtk+

USE_X11=		Yes

MAKE_FILE=		Makefile.OPENBSD

3D_OBJECTS=		${PREFIX}/share/wmcube

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcube ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3dObjects/* ${3D_OBJECTS}

.include <bsd.port.mk>
