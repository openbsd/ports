# $OpenBSD: Makefile,v 1.32 2020/06/07 16:01:39 ajacoutot Exp $

BROKEN=			requires py3-libxml2

COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-2.2.1
CATEGORIES=		sysutils x11

HOMEPAGE=		http://virt-manager.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://virt-manager.org/download/sources/virt-manager/

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool

MODPY_BUILDDEP=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

NO_BUILD=		Yes

# XXX textproc/libxml,-python${MODPY_FLAVOR}
RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/vte3 \
			misc/osinfo/libosinfo \
			sysutils/libvirt-python${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/gtk-vnc \
			x11/gtksourceview4 \
			x11/spice-gtk

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

MODPY_SETUP_ARGS=	--no-update-icon-cache \
			--no-compile-schemas

pre-configure:
	${SUBST_CMD} ${WRKSRC}/virtinst/buildconfig.py

do-test:
	${MODPY_TEST_TARGET} ${TEST_TARGET}

.include <bsd.port.mk>
