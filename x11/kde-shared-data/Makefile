# $OpenBSD: Makefile,v 1.10 2020/06/30 07:20:27 rsadowski Exp $

COMMENT =	common run-time components for KDE3
CATEGORIES =	x11 x11/kde3
PKGNAME =	kde-shared-data-4.14.3
PKG_ARCH =	*
REVISION =	4

PERMIT_PACKAGE =	Yes

KDE3_VERSION =		3.5.10

DISTFILES =		kdebase-${KDE3_VERSION}.tar.bz2

DIST_SUBDIR =		kde
MASTER_SITES =		${MASTER_SITE_KDE:=stable/${KDE3_VERSION}/src/}

BUILD_DEPENDS =
WANTLIB =
LIB_DEPENDS =
RUN_DEPENDS =		x11/gtk+3,-guic

CONFIGURE_STYLE =	none
NO_BUILD =		Yes

DESKDIRS =	${PREFIX}/share/desktop-directories
ICONDIRS =	${PREFIX}/share/icons/hicolor/

ICON_APPS =	knetattach
ICON_DIMS =	16 22 32 48 64 128

# minimize time spent on extracting by providing patterns
do-extract:
	cd ${WRKDIR}; ${LOCALBASE}/bin/bzcat \
	    ${FULLDISTDIR}/${DISTFILES:C/:[0-9]$//:M*.bz2} | \
		pax -r '*/kde*.directory'

do-install:
# desktop directory descriptions, ordering matters
	${INSTALL_DATA_DIR} ${DESKDIRS}
	cd ${WRKSRC}/kdebase-${KDE3_VERSION}/applnk; \
		${INSTALL_DATA} kde*.directory ${DESKDIRS}

# PNG icons
.for _dim in ${ICON_DIMS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_dim}x${_dim}/apps
.endfor

# scalable icons
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps

.include <bsd.port.mk>
