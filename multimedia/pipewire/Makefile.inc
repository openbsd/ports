DISTNAME ?=		${PW_PROJECT}-${PW_VERSION}

CATEGORIES +=		multimedia

HOMEPAGE ?=		https://pipewire.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# pipewire: MIT
# helvum: GPLv3
PERMIT_PACKAGE=		Yes

SITES ?=		https://gitlab.freedesktop.org/pipewire/${PW_PROJECT}/-/archive/${PW_VERSION}/

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
