# $OpenBSD: Makefile,v 1.46 2014/01/13 20:38:52 zhuk Exp $

COMMENT = 		K Desktop Environment, admin tools
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeadmin-${VERSION}
MODKDE_VERSION =	3.5.8
PKGSPEC =		kdeadmin>=3,<4

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3

SEPARATE_BUILD =	flavored

REVISION =	12

WANTLIB =  c expat m pthread pthread-stubs stdc++ util z
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt fontconfig freetype xcb
WANTLIB += ${KDE}/DCOP ${KDE}/kabc ${KDE}/kdecore>=6 ${KDE}/kdefx
WANTLIB += ${KDE}/kdeprint ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio
WANTLIB += ${KDE}/kntlm ${KDE}/kparts ${KDE}/kresources
WANTLIB += ${KDE}/kwalletclient ${KDE}/vcard
WANTLIB += art_lgpl_2 fam idn png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>
