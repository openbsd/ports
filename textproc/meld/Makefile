# $OpenBSD: Makefile,v 1.48 2015/07/29 08:41:10 ajacoutot Exp $

COMMENT=		graphical diff and merge tool

GNOME_VERSION=		3.14.0
GNOME_PROJECT=		meld
SUBST_VARS=		GNOME_VERSION
REVISION=		1

CATEGORIES=		textproc

HOMEPAGE=		http://meldmerge.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

MODPY_ADJ_FILES=	bin/meld

RUN_DEPENDS=		devel/py-gobject3 \
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
