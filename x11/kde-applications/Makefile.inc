DIST_SUBDIR =	kde-applications

.if !defined(CATEGORIES)
ERRORS +=		"Fatal: missing CATEGORIES"
.endif
CATEGORIES +=		x11/kde-applications

MAINTAINER ?=		Rafael Sadowski <rsadowski@openbsd.org>

# Do not rely on devel/cmake here: additional modules that are
# set up in ports may have, say, lang/python before devel/cmake,
# thus making lang/python evaluating first. And when lang/python
# sees empty CONFIGURE_STYLE, it forces that this is Python
# module port, and breaks build.
CONFIGURE_STYLE =	cmake

.if defined(MODKDE_KF5) && ${MODKDE_KF5:L} == "yes"
MODULES +=		devel/kf5
.else
CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON
MODULES +=		devel/kf6
.endif

MODULES :=		x11/kde-applications \
			${MODULES}

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE ?=	Yes

VERSION ?=		${MODKDE_VERSION}

SITES ?=		${SITE_KDE:=stable/release-service/${VERSION}/src/}
EXTRACT_SUFX ?=		.tar.xz

RUN_DEPENDS +=		${MODKDE_RUN_DEPENDS}
BUILD_DEPENDS +=	${MODKDE_BUILD_DEPENDS}
