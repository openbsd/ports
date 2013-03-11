# $OpenBSD: Makefile,v 1.38 2013/03/11 11:41:29 espie Exp $

COMMENT=	D-Bus interface for user account query and manipulation

DISTNAME=	accountsservice-0.6.30
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  accountsservice           0.0 # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += kvm pcre polkit-gobject-1 pthread z

MASTER_SITES=	http://www.freedesktop.org/software/accountsservice/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection \
		lang/vala

LIB_DEPENDS=	sysutils/polkit

RUN_DEPENDS=	sysutils/consolekit

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-systemd \
		--disable-docbook-docs

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/accountsservice

pre-configure:
	perl -pi -e 's,/etc/gdm,${SYSCONFDIR}/gdm,g' \
		${WRKSRC}/src/daemon.c

.include <bsd.port.mk>
