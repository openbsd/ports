# $OpenBSD: kf5.port.mk,v 1.28 2021/10/13 15:02:03 rsadowski Exp $

MODKF5_VERSION =	5.87.0

EXTRACT_SUFX ?=		.tar.xz

.if ${PKGPATH:Ndevel/kf5/extra-cmake-modules}
BUILD_DEPENDS +=	devel/kf5/extra-cmake-modules>=${MODKF5_VERSION}
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =	cmake
.endif

.if ${CONFIGURE_STYLE:Mcmake}
MODULES +=		devel/cmake

# set up default locations
CONFIGURE_ARGS += \
	-DECM_MKSPECS_INSTALL_DIR=${PREFIX}/share/kf5/mkspecs \
	-DKDE_INSTALL_LIBEXECDIR=libexec \
	-DKDE_INSTALL_QTPLUGINDIR=${MODQT_LIBDIR}/plugins \
	-DKDE_INSTALL_SHAREDSTATEDIR=/var \
	-DKDE_INSTALL_SYSCONFDIR=/etc \
	-DKDE_INSTALL_MANDIR=${PREFIX}/man \
	-DKDE_INSTALL_QMLDIR=${MODQT_LIBDIR}/qml

# XXX it's very strange this is off by default
CONFIGURE_ARGS +=	-DALLOW_UNDEFINED_LIB_SYMBOLS=ON

# The PythonModuleGeneration CMake find module picks up highest Python3
# version it could find, and fails to build anyway.
# The module needs more fixes. Also, it's not clear how to deal
# with multiple Python dependencies.
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_PythonModuleGeneration=ON
.endif

# make sure cmake module preceeds qt5, unless we really want qmake
MODULES +=		x11/qt5

# fix {/usr/local,}/etc/{dbus-1,xdg} and friends
MODKF5_EXAMPLES_DIR =	${PREFIX}/share/examples/${PKGNAME:C/-[0-9].*//}/
MODKF5_post-install += \
	cd ${WRKINST}; \
	find etc -type d -empty -delete; \
	if [ -d ${WRKINST}/etc ]; then \
		cd ${WRKINST}/etc; \
		${INSTALL_DATA_DIR} ${MODKF5_EXAMPLES_DIR}; \
		pax -rw * ${MODKF5_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc; \
	fi; \
	if [ -d ${WRKINST}/etc/dbus-1 ]; then \
		cd ${WRKINST}/etc; \
		${INSTALL_DATA_DIR} ${MODKF5_EXAMPLES_DIR}; \
		pax -rw dbus-1 ${MODKF5_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc/dbus-1; \
	fi; \
	if [ -d ${WRKINST}/etc/xdg ]; then \
		cd ${WRKINST}/etc; \
		pax -rw xdg ${MODKF5_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc/xdg; \
	fi;

# list of all languages supported by KDE5
ALL_LANGS +=	ar bg bs ca ca@valencia cs da de el en_GB es et eu fa fi fr
ALL_LANGS +=	ga gl he hi hr hu ia id is it ja kk km ko lt lv mr nb nds
ALL_LANGS +=	nl nn pa pl pt pt_BR ro ru sk sl sr sv tr ug uk wa
ALL_LANGS +=	zh_CN zh_TW

# if needed, mark conflicts with kde-l10n-* packages from KDE 4
MODKF5_L10N_CONFLICT ?=	no
.if ${MODKF5_L10N_CONFLICT:L} != "no"
PKG_ARGS +=	-f ${MAKEFILE_LIST:M*/kf5.port.mk:C,/[^/]+$,,}/PFRAG.l10n
.endif
.for _s in ${MULTI_PACKAGES}
MODKF5_L10N_CONFLICT${_s} ?=	no
. if ${MODKF5_L10N_CONFLICT${_s}:L} != "no"
PKG_ARGS${_s} +=-f ${MAKEFILE_LIST:M*/kf5.port.mk:C,/[^/]+$,,}/PFRAG.l10n
. endif
.endfor

# if needed, mark conflicts with kde-i18n-* packages from KDE 3
MODKF5_I18N_CONFLICT ?=	no
.if ${MODKF5_I18N_CONFLICT:L} != "no"
PKG_ARGS +=	-f ${MAKEFILE_LIST:M*/kf5.port.mk:C,/[^/]+$,,}/PFRAG.i18n
.endif
.for _s in ${MULTI_PACKAGES}
MODKF5_I18N_CONFLICT${_s} ?=	no
. if ${MODKF5_I18N_CONFLICT${_s}:L} != "no"
PKG_ARGS${_s} +=-f ${MAKEFILE_LIST:M*/kf5.port.mk:C,/[^/]+$,,}/PFRAG.i18n
. endif
.endfor

# do not install localized manual pages
MODKF5_post-install += \
	rm -Rf ${ALL_LANGS:S,^,${PREFIX}/man/,}

# could not use this in devel/kf5/Makefile.inc because MODKF5_VERSION
# is not set there yet
.if ${PKGPATH:Mdevel/kf5/*}
BUILD_DEPENDS := \
	${BUILD_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION:R},} \
			${BUILD_DEPENDS:Ndevel/kf5/*}
RUN_DEPENDS := \
	${RUN_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION:R},} \
			${RUN_DEPENDS:Ndevel/kf5/*}
LIB_DEPENDS := \
	${LIB_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION:R},} \
			${LIB_DEPENDS:Ndevel/kf5/*}
.endif
