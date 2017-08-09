# $OpenBSD: Makefile.inc,v 1.1 2017/08/09 14:40:30 jasper Exp $

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
.endif
