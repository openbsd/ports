# $OpenBSD: Makefile,v 1.28 2020/03/31 04:43:59 rsadowski Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel
VERSION =	4.10.3
DISTNAME =	phonon-${VERSION}
HOMEPAGE =	https://community.kde.org/Phonon
REVISION =	0

# The phonon_s* are for KDE4-only, renamed to avoid clashing with Qt4's one
# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS =	phonon_s		4.0
SHARED_LIBS +=	phonon_sexperimental	3.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} QtDBus QtGui m pulse pulse-mainloop-glib

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/}
EXTRACT_SUFX =		.tar.xz

LIB_DEPENDS =		audio/pulseaudio

MODULES =		x11/kde4
MODKDE4_USE =
MODKDE4_LIB_LINKS =	Yes
PHONON_INCLUDE_DIR =	${MODKDE4_INCLUDE_DIR}

# Not sure if it's needed at all but doesn't hurt either for now.
CONFIGURE_ARGS =	-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT=ON

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN=OFF \
			-DPHONON_INSTALL_QT_COMPAT_HEADERS=OFF

CONFIGURE_ARGS +=	-DBACKEND_INSTALL_DIR="${PREFIX}/lib/kde4/plugins/phonon_backend" \
			-DINCLUDE_INSTALL_DIR=${PHONON_INCLUDE_DIR} \

NO_TEST =		Yes

SUBST_VARS =		PHONON_INCLUDE_DIR

.include <bsd.port.mk>
