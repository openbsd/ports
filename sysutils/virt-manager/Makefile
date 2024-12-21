COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-5.0.0
CATEGORIES=		sysutils x11
EXTRACT_SUFX=		.tar.xz
REVISION=		0

HOMEPAGE=		http://virt-manager.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=			https://releases.pagure.org/virt-manager/

MODULES=		devel/dconf \
			devel/meson \
			lang/python

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/py-docutils

# needed for tests; checked at configure time
BUILD_DEPENDS +=	devel/py-codestyle \
			devel/pylint \
			devel/py-test \
			textproc/codespell

RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3 \
			devel/vte3 \
			misc/osinfo/libosinfo \
			sysutils/libvirt-python \
			textproc/libxml,-python \
			www/py-requests \
			x11/gtk-vnc \
			x11/gtksourceview4 \
			x11/spice-gtk \
			x11/gtk+3

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+4,-guic

CONFIGURE_ARGS=		-Dupdate-icon-cache=false

pre-configure:
	${SUBST_CMD} ${WRKSRC}/virtinst/buildconfig.py
	ln -sf ${LOCALBASE}/bin/py.test ${WRKDIR}/bin/pytest

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/virt-manager

.include <bsd.port.mk>
