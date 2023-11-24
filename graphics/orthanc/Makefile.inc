CATEGORIES ?=		graphics/orthanc

MODULES +=		devel/cmake

# Orthanc is GPLv3, some plugins are AGPLv3
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS +=	archivers/unzip

FRAMEWORK_VERSION ?=	1.11.1
FRAMEWORK_DISTFILE ?=	Orthanc-${FRAMEWORK_VERSION}.tar.gz

.if defined(PLUGIN)
DISTNAME ?=		Orthanc${PLUGIN}-${VERSION}
PKGNAME ?=		orthanc-plugin-${PLUGIN:L}-${VERSION}

HOMEPAGE ?=		https://www.orthanc-server.com/static.php?page=${PLUGIN:L}
SITES ?=		https://orthanc.uclouvain.be/downloads/sources/orthanc-${PLUGIN:L}/

pre-configure:
	sed -i 's,share/orthanc/plugins,libexec/orthanc/plugins,g' \
	    ${WRKSRC}/CMakeLists.txt

.endif
