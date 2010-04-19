# $OpenBSD: Makefile,v 1.3 2010/04/19 13:55:56 edd Exp $

COMMENT=	lightweight freedesktop-compliant panel/taskbar/clock

DISTNAME=	tint2-0.9
PKGNAME=	${DISTNAME:S/tint2/tint/}
CATEGORIES=	x11

HOMEPAGE=	http://code.google.com/p/tint2/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xinerama Xrender c cairo glib-2.0 gobject-2.0 \
		Xcomposite Xdamage

MASTER_SITES=	http://tint2.googlecode.com/files/

LIB_DEPENDS=	Imlib2.>=2::graphics/imlib2 \
		pango-1.0,pangocairo-1.0::devel/pango

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	"LDFLAGS=-L${LOCALBASE}/lib -L${X11BASE}/lib"

FAKE_FLAGS=	rcdir=${PREFIX}/share/examples/tint2

.include <bsd.port.mk>
