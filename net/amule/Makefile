# $OpenBSD: Makefile,v 1.6 2005/10/07 16:20:34 fgsch Exp $

COMMENT=	"another eMule p2p client"

DISTNAME=	aMule-2.0.3
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amule/}

HOMEPAGE=	http://www.amule.org/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	devel/gettext

LIB_DEPENDS=	wx_gtk:wxWidgets-gtk->=2.4.2-!gtk2:x11/wxWidgets/gtk

USE_X11=	Yes

WANTLIB=	X11 Xext Xi c gdk glib gmodule gtk m pthread stdc++ z

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-debug --enable-optimize --with-x
CONFIGURE_ENV=	WXCONFIG="${LOCALBASE}/bin/wxgtk-2.4-config" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_REGRESS=	Yes

.include <bsd.port.mk>
