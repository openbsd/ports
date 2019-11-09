# $OpenBSD: Makefile,v 1.30 2019/11/09 10:32:26 ajacoutot Exp $

COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-1.5.1
CATEGORIES=		sysutils x11
REVISION=		3

HOMEPAGE=		http://virt-manager.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/download/sources/virt-manager/

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3 \
			devel/vte3 \
			misc/osinfo/libosinfo \
			net/py-ipaddr \
			sysutils/libvirt-python \
			textproc/libxml,-python \
			www/py-requests \
			x11/gtk-vnc \
			x11/spice-gtk

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

NO_BUILD=		Yes
MODPY_BUILDDEP=		Yes

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

MODPY_ADJ_FILES=	virt-clone virt-convert virt-install virt-manager \
			virt-xml

MODPY_SETUP_ARGS =	--no-update-icon-cache \
			--no-compile-schemas

pre-configure:
	${SUBST_CMD} ${WRKSRC}/virtcli/cliconfig.py \
		${WRKSRC}/virtinst/capabilities.py

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
