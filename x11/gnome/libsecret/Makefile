# $OpenBSD: Makefile,v 1.19 2013/03/04 18:53:53 ajacoutot Exp $

COMMENT=	library for storing and retrieving passwords and secrets

GNOME_PROJECT=	libsecret
GNOME_VERSION=	0.14

SHARED_LIBS +=  secret-1             0.0      # unknown

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

MODGNOME_TOOLS=	goi vala
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS=	devel/glib2 \
		security/libgcrypt

# unable to autolaunch a dbus-daemon without a $DISPLAY for X11
REGRESS_IS_INTERACTIVE=	X11
REGRESS_DEPENDS=	${MODPY_RUN_DEPENDS} \
			x11/dbus-python

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libsecret/tests/Makefile.in \
		${WRKSRC}/libsecret/tests/mock-service.c

# these files call "python", libsecret/tests/{Makefile.in,mock-service.c}
pre-regress:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
