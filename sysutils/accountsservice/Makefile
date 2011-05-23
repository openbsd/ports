# $OpenBSD: Makefile,v 1.5 2011/05/23 08:22:43 ajacoutot Exp $

COMMENT=	D-Bus interface for user account query and manipulation

DISTNAME=	accountsservice-0.6.12
EXTRACT_SUFX=	.tar.bz2

REVISION=	3

SHARED_LIBS +=  accountsservice           0.0 # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 kvm pcre polkit-gobject-1 pthread
WANTLIB += z

MASTER_SITES=	http://www.freedesktop.org/software/accountsservice/

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	sysutils/polkit \
		x11/dbus-glib

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-docbook-docs

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/accountsservice

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon.c

.include <bsd.port.mk>
