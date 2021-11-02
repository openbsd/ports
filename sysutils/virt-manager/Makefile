# $OpenBSD: Makefile,v 1.38 2021/11/02 00:02:35 sthen Exp $

COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-3.2.0
CATEGORIES=		sysutils x11
REVISION=		0

HOMEPAGE=		http://virt-manager.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://virt-manager.org/download/sources/virt-manager/

MODULES=		devel/dconf \
			lang/python

NO_BUILD=		Yes
MODPY_BUILDDEP=		Yes

BUILD_DEPENDS=		devel/gettext,-tools

# rst2html-3
BUILD_DEPENDS +=	textproc/py-docutils${MODPY_FLAVOR}

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
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/rst2html-3 rst2man

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/virt-manager

do-test:
	${MODPY_TEST_TARGET} ${TEST_TARGET}

.include <bsd.port.mk>
