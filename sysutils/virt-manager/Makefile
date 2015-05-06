# $OpenBSD: Makefile,v 1.12 2015/05/06 21:36:33 jasper Exp $

COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-1.2.0
REVISION=		0
CATEGORIES=		sysutils x11

HOMEPAGE=		http://virt-manager.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/sources/virt-manager/

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3 \
			devel/vte3>=0.38 \
			misc/libosinfo>=0.2.11 \
			net/py-ipaddr \
			sysutils/libvirt-python \
			textproc/libxml,-python \
			www/py-urlgrabber \
			x11/gtk-vnc \
			x11/spice-gtk

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

NO_BUILD=		Yes

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

MODPY_ADJ_FILES=	virt-clone virt-convert virt-install virt-manager \
			virt-xml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/virtcli/cliconfig.py \
		${WRKSRC}/virtinst/capabilities.py

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
