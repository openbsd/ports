# $OpenBSD: Makefile,v 1.7 2009/02/11 15:47:51 jasper Exp $

COMMENT=		assistive technology for people with visual impairments

GNOME_VERSION=		2.24.3
GNOME_PROJECT=		orca
PKGNAME=		${DISTNAME}p1

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		glib-2.0 pcre

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/py-gnome \
			::x11/gnome/mag \
			::x11/gnome/speech

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-liblouis
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
