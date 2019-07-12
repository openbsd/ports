# $OpenBSD: Makefile,v 1.67 2019/07/12 20:50:01 sthen Exp $

COMMENT=		graphical diff and merge tool

GNOME_VERSION=		3.20.1
GNOME_PROJECT=		meld
MODPY_EGG_VERSION=	${GNOME_VERSION}
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		http://meldmerge.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

MODPY_ADJ_FILES=	bin/meld

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gtksourceview3

# org.gnome.desktop.interface
RUN_DEPENDS +=		devel/gsettings-desktop-schemas

NO_TEST=		yes

do-install:
	${MODPY_CMD} --no-compile-schemas --no-update-icon-cache \
		${MODPY_DISTUTILS_INSTALL}
	mv ${PREFIX}/share/doc/meld{-${GNOME_VERSION},}
	mv ${PREFIX}/{share,}/man/man1/meld.1
	rmdir ${PREFIX}/share/man/{man1,}

.include <bsd.port.mk>
