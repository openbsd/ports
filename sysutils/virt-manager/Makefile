# $OpenBSD: Makefile,v 1.33 2020/06/09 07:30:55 ajacoutot Exp $

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

RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/vte3 \
			misc/osinfo/libosinfo \
			sysutils/libvirt-python${MODPY_FLAVOR} \
			textproc/libxml,-python \
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
