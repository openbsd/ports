# $OpenBSD: Makefile,v 1.1.1.1 2008/03/17 19:11:58 jasper Exp $

COMMENT=		assistive technology for people with visual impairments

GNOME_VERSION=		2.20.2
GNOME_PROJECT=		orca

HOMEPAGE=		http://live.gnome.org/Orca

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		glib-2.0 pcre

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/py-gnome \
			::x11/gnome/mag \
			::x11/gnome/speech

RUN_DEPENDS=		::x11/gnome/py-gnome \
			::x11/gnome/mag \
			::x11/gnome/speech

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
