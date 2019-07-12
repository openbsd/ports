# $OpenBSD: Makefile,v 1.8 2019/07/12 20:51:14 sthen Exp $

COMMENT =	common run-time components for KDE3 and KDE4
CATEGORIES =	x11 x11/kde3
PKGNAME =	kde-shared-data-${MODKDE4_VERSION}
PKG_ARCH =	*
REVISION =	3

MODULES =		x11/kde4
MODKDE4_USE =
MODKDE4_NO_QT =		Yes
MODKDE4_FIX_GETTEXT =	No

PERMIT_PACKAGE =	Yes

KDE3_VERSION =		3.5.10

DISTFILES =		kdebase-${KDE3_VERSION}.tar.bz2 \
			kde-runtime-${MODKDE4_VERSION}.tar.xz:0

DIST_SUBDIR =		kde
MASTER_SITES =		${MASTER_SITE_KDE:=stable/${KDE3_VERSION}/src/}
MASTER_SITES0 =		${MASTER_SITE_KDE:=stable/${MODKDE4_VERSION}/src/}

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
	cd ${WRKDIR}; ${LOCALBASE}/bin/xzcat \
	    ${FULLDISTDIR}/${DISTFILES:C/:[0-9]$//:M*.xz} | \
		pax -r '*/kde*.directory' '*/hi*.png' '*/hisc*.svgz'

do-install:
# desktop directory descriptions, ordering matters
	${INSTALL_DATA_DIR} ${DESKDIRS}
	cd ${WRKSRC}/kdebase-${KDE3_VERSION}/applnk; \
		${INSTALL_DATA} kde*.directory ${DESKDIRS}
	cd ${WRKSRC}/kde-runtime-${MODKDE4_VERSION}/menu/desktop; \
		${INSTALL_DATA} kde*.directory ${DESKDIRS}

# PNG icons
.for _dim in ${ICON_DIMS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_dim}x${_dim}/apps
. for _app in ${ICON_APPS}
	cd ${WRKSRC}/kde-runtime-${MODKDE4_VERSION}; \
	! test -e ${_app}/hi${_dim}-app-${_app}.png || \
	    ${INSTALL_DATA} ${_app}/hi${_dim}-app-${_app}.png \
	        ${PREFIX}/share/icons/hicolor/${_dim}x${_dim}/apps
. endfor
.endfor

# scalable icons
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
.for _app in ${ICON_APPS}
	cd ${WRKSRC}/kde-runtime-${MODKDE4_VERSION}; \
	! test -e ${_app}/hisc-app-${_app}.svgz || \
	    ${INSTALL_DATA} ${_app}/hisc-app-${_app}.svgz \
	        ${PREFIX}/share/icons/hicolor/scalable/apps
.endfor

.include <bsd.port.mk>
