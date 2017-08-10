# $OpenBSD: Makefile.inc,v 1.3 2017/08/10 01:51:19 jasper Exp $

CATEGORIES ?=		graphics/orthanc

MODULES +=		devel/cmake

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Orthanc is GPLv3, some plugins are AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

.if defined(PLUGIN)
DISTNAME ?=		Orthanc${PLUGIN}-${VERSION}
PKGNAME ?=		orthanc-plugin-${PLUGIN:L}-${VERSION}

HOMEPAGE ?=		http://www.orthanc-server.com/static.php?page=plugin-${PLUGIN:L}
MASTER_SITES ?=		http://www.orthanc-server.com/downloads/get.php\?path=/plugin-${PLUGIN:L}/

pre-configure:
	sed -i 's,share/orthanc/plugins,libexec/orthanc/plugins,g' \
	    ${WRKSRC}/CMakeLists.txt

.endif
