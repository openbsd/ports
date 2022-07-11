COMMENT =		DigiDoc4 GUI client for signing and encrypting documents

V =			4.2.11
DISTNAME =		qdigidoc4_${V}.110-1804
REVISION =		0
EXTRACT_SUFX =		.tar.xz
WRKDIST =		${WRKDIR}/qdigidoc4
PKGNAME =		qdigidoc4-${V}
CATEGORIES =		security x11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.id.ee/

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/open-eid/DigiDoc4-Client/releases/download/v${V}/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =		https://id.eesti.ee/
DISTFILES +=		qdigidoc4-{}config.json:0 \
			qdigidoc4-{}config.pub:0 \
			qdigidoc4-{}config.rsa:0
# ${WRKSRC}/common/CMakeLists.txt itself substitutes suffix in CONFIG_URL
CONFIGURE_ENV +=	CONFIG_URL=file://${DISTDIR}/qdigidoc4-config.json

MASTER_SITES1 =		https://ec.europa.eu/tools/lotl/
DISTFILES +=		qdigidoc4-{}eu-lotl-pivot-300.xml:1
CONFIGURE_ENV +=	TSL_URL=file://${DISTDIR}/qdigidoc4-eu-lotl-pivot-300.xml

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB +=		${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB +=		Qt5Svg Qt5Widgets c crypto digidocpp lber ldap m pcsclite ssl

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools \
			x11/qt5/qttools

LIB_DEPENDS =		databases/openldap,-main \
			security/libdigidocpp>=3.14.8 \
			security/pcsc-lite \
			x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/qt5/qttranslations \
			x11/gtk+3,-guic

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in qdigidoc4
LIB_DEPENDS +=		security/opensc
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

NO_TEST =		Yes

# Pending "Update plugin for KDE Plasma"
# https://github.com/open-eid/digidoc-extensions/pull/21
post-install:
	# fix program name in KDE extension
	sed -i -E s/qdigidoc-?client/qdigidoc4/ \
	    ${PREFIX}/share/kservices5/qdigidoc-signer.desktop

.include <bsd.port.mk>
