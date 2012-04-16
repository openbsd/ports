# $OpenBSD: Makefile,v 1.3 2012/04/16 12:00:25 ajacoutot Exp $

COMMENT=	library for storing and retrieving passwords and secrets

GNOME_PROJECT=	libsecret
GNOME_VERSION=	0.2

SHARED_LIBS +=  secret-0                  0.0 # 0.0

HOMEPAGE=	https://live.gnome.org/Libsecret

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gthread-2.0 pcre pthread z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS=	goi
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

LIB_DEPENDS=	devel/glib2 \
		security/libgcrypt

# Unable to autolaunch a dbus-daemon without a $DISPLAY for X11
REGRESS_IS_INTERACTIVE=	X11
REGRESS_DEPENDS=	${MODPY_RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/library/tests/mock-service.c \
		${WRKSRC}/library/tests/Makefile.in

.include <bsd.port.mk>
