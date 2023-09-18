DISTNAME ?=		${PW_PROJECT}-${PW_VERSION}

CATEGORIES +=		multimedia

HOMEPAGE ?=		https://pipewire.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MASTER_SITES ?=		https://gitlab.freedesktop.org/pipewire/${PW_PROJECT}/-/archive/${PW_VERSION}/

MODULES +=		devel/meson

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
