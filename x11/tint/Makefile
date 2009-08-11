# $OpenBSD: Makefile,v 1.2 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	lightweight freedesktop-compliant panel/taskbar/clock

DISTNAME=	tint-0.6.0
CATEGORIES=	x11
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://code.google.com/p/tint2/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xinerama Xrender c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pixman-1 png z pthread-stubs xcb

MASTER_SITES=	http://tint2.googlecode.com/files/

MODULES=	devel/gettext

LIB_DEPENDS=	Imlib2.>=2::graphics/imlib2 \
		pango-1.0,pangoft2-1.0,pangocairo-1.0::devel/pango

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/tint
WRKSRC=		${WRKDIST}/src

ALL_TARGET=	tint

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tint
	${INSTALL_DATA} ${WRKDIST}/doc/tint-0.6.* ${PREFIX}/share/doc/tint/

.include <bsd.port.mk>
