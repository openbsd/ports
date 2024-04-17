MODKF6_VERSION =	6.1.0

MODKF6_BUILD_TESTING ?= No
MODKF6_GIT ?= No

.if ${PKGPATH:Ndevel/kf6/extra-cmake-modules}
BUILD_DEPENDS +=	devel/kf6/extra-cmake-modules>=${MODKF6_VERSION}
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =	cmake
.endif

MODULES +=		x11/qt6

.if ${CONFIGURE_STYLE:Mcmake}
MODULES +=		devel/cmake

# set up default locations
CONFIGURE_ARGS += \
	-DECM_MKSPECS_INSTALL_DIR=${PREFIX}/share/kf6/mkspecs \
	-DKDE_INSTALL_LIBEXECDIR=libexec \
	-DKDE_INSTALL_QTPLUGINDIR=${MODQT_LIBDIR}/plugins \
	-DKDE_INSTALL_SHAREDSTATEDIR=/var \
	-DKDE_INSTALL_SYSCONFDIR=/etc \
	-DKDE_INSTALL_MANDIR=${PREFIX}/man \
	-DKDE_INSTALL_QMLDIR=${MODQT_LIBDIR}/qml

CONFIGURE_ARGS +=	-DKF_IGNORE_PLATFORM_CHECK=ON

# The PythonModuleGeneration CMake find module picks up highest Python3
# version it could find, and fails to build anyway.
# The module needs more fixes. Also, it's not clear how to deal
# with multiple Python dependencies.
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_PythonModuleGeneration=ON

.if ${MODKF6_BUILD_TESTING:L} == "no"
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF
.endif

.if ${MODKF6_GIT:L} == "no"
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON
.endif

.endif

# fix {/usr/local,}/etc/{dbus-1,xdg} and friends
MODKF6_EXAMPLES_DIR =	${PREFIX}/share/examples/${PKGNAME:C/-[0-9].*//}/
MODKF6_post-install += \
	cd ${WRKINST}; \
	if [ -d ${WRKINST}/etc ]; then \
		find etc -type d -empty -delete; \
	fi; \
	if [ -d ${WRKINST}/etc ]; then \
		cd ${WRKINST}/etc; \
		${INSTALL_DATA_DIR} ${MODKF6_EXAMPLES_DIR}; \
		pax -rw * ${MODKF6_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc; \
		mkdir ${WRKINST}/{firmware,rc.d}; \
	fi; \
	if [ -d ${WRKINST}/etc/dbus-1 ]; then \
		cd ${WRKINST}/etc; \
		${INSTALL_DATA_DIR} ${MODKF6_EXAMPLES_DIR}; \
		pax -rw dbus-1 ${MODKF6_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc/dbus-1; \
	fi; \
	if [ -d ${WRKINST}/etc/xdg ]; then \
		cd ${WRKINST}/etc; \
		pax -rw xdg ${MODKF6_EXAMPLES_DIR}; \
		rm -Rf ${WRKINST}/etc/xdg; \
	fi;

# list of all languages supported by KDE6
ALL_LANGS +=	ar bg bs ca ca@valencia cs da de el en_GB es et eu fa fi fr
ALL_LANGS +=	ga gl he hi hr hu ia id is it ja kk km ko lt lv mr nb nds
ALL_LANGS +=	nl nn pa pl pt pt_BR ro ru sk sl sr sv tr ug uk wa
ALL_LANGS +=	zh_CN zh_TW

# do not install localized manual pages
MODKF6_post-install += \
	rm -Rf ${ALL_LANGS:S,^,${PREFIX}/man/,}

# could not use this in devel/kf6/Makefile.inc because MODKF6_VERSION
# is not set there yet
.if ${PKGPATH:Mdevel/kf6/*}
BUILD_DEPENDS := \
	${BUILD_DEPENDS:Mdevel/kf6/*:C,(>=.*)?$,>=${MODKF6_VERSION:R},} \
			${BUILD_DEPENDS:Ndevel/kf6/*}
RUN_DEPENDS := \
	${RUN_DEPENDS:Mdevel/kf6/*:C,(>=.*)?$,>=${MODKF6_VERSION:R},} \
			${RUN_DEPENDS:Ndevel/kf6/*}
LIB_DEPENDS := \
	${LIB_DEPENDS:Mdevel/kf6/*:C,(>=.*)?$,>=${MODKF6_VERSION:R},} \
			${LIB_DEPENDS:Ndevel/kf6/*}
.endif
