# $OpenBSD: Makefile,v 1.14 2011/09/08 13:56:53 ajacoutot Exp $

# XXX revert the following commits for now (OpenBSD doesn't have utmpx)
#
# From a4e478b9fef287698a3369d4b0d779c8ab949ff3 Mon Sep 17 00:00:00 2001
# From: Ray Strode <rstrode@redhat.com>
# Date: Tue, 19 Jul 2011 19:18:11 +0000
# Subject: daemon: fix up some problems in last commit
#
# From 281ac4126636a7a701b95c465ab9de7762e17fdf Mon Sep 17 00:00:00 2001
# From: Lennart Poettering <lennart@poettering.net>
# Date: Sun, 17 Jul 2011 01:36:57 +0000
# Subject: daemon: get login frequency from wtmp instead of ConsoleKit
PATCHFILES=	accountsservice-daemon_c.patch:0
MASTER_SITES0=	http://distfiles.bsdfrog.org/

COMMENT=	D-Bus interface for user account query and manipulation

DISTNAME=	accountsservice-0.6.14
EXTRACT_SUFX=	.tar.xz

REVISION=	0

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

RUN_DEPENDS=	sysutils/consolekit

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--enable-introspection \
		--disable-docbook-docs

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/accountsservice

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon.c

.include <bsd.port.mk>
