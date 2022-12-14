COMMENT =		DigiDoc4 GUI client for signing and encrypting documents

V =			4.2.12
REVISION =		2
DISTNAME =		qdigidoc4-${V}
CATEGORIES =		security x11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.id.ee/

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		qdigidoc4-0
MASTER_SITES =		https://github.com/open-eid/DigiDoc4-Client/releases/download/v${V}/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =		https://id.eesti.ee/
DISTFILES +=		config.json:0 \
			config.pub:0 \
			config.rsa:0
# ${WRKSRC}/common/CMakeLists.txt itself substitutes suffix in CONFIG_URL
CONFIGURE_ENV +=	CONFIG_URL=file://${FULLDISTDIR}/config.json

MASTER_SITES1 =		https://ec.europa.eu/tools/lotl/
DISTFILES +=		eu-lotl-pivot-300.xml:1
CONFIGURE_ENV +=	TSL_URL=file://${FULLDISTDIR}/eu-lotl-pivot-300.xml

MASTER_SITES2 =		https://github.com/open-eid/DigiDoc4-Client/
# merged but after 4.2.12 release
PATCHFILES +=		bsd-{pull/}1072.patch:2
PATCHFILES +=		qt6-{pull/}1082.patch:2

MASTER_SITES3 =		https://github.com/open-eid/qt-common/
# merged but after 4.2.12 release
PATCHFILES +=		qt-common-fix-i386-{pull/}124.patch:3
PATCHFILES +=		qt-common-pcsc-lite-{pull/}121.patch:3
PATCH_CASES +=		qt-common-*.patch) \
				${PATCH} ${PATCH_DIST_ARGS} < $$patchfile \
				    -d${WRKSRC}/common ;;

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB +=		${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB +=		Qt6Network Qt6PrintSupport Qt6Svg Qt6SvgWidgets Qt6Widgets
WANTLIB += 		c crypto digidocpp lber ldap m pcsclite ssl

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gettext,-tools \
			x11/qt6/qttools

LIB_DEPENDS =		databases/openldap,-main \
			security/libdigidocpp>=3.14.10 \
			security/pcsc-lite \
			x11/qt6/qt5compat \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/qt6/qttranslations \
			x11/gtk+3,-guic

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in qdigidoc4
BUILD_DEPENDS +=	security/opensc
RUN_DEPENDS +=		security/opensc
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

NO_TEST =		Yes

# merged but after 4.2.12 release "Update plugin for KDE Plasma"
# https://github.com/open-eid/digidoc-extensions/pull/21
post-install:
	# fix program name in KDE extension
	sed -i -E s/qdigidoc-?client/qdigidoc4/ \
	    ${PREFIX}/share/kservices5/qdigidoc-signer.desktop

.include <bsd.port.mk>
