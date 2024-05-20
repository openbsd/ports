CATEGORIES +=		x11/kde-plasma

MAINTAINER ?=		Rafael Sadowski <rsadowski@openbsd.org>

# Do not rely on devel/cmake here: additional modules that are
# set up in ports may have, say, lang/python before devel/cmake,
# thus making lang/python evaluating first. And when lang/python
# sees empty CONFIGURE_STYLE, it forces that this is Python
# module port, and breaks build.
CONFIGURE_STYLE ?=	cmake

MODULES :=		devel/kf6 \
			x11/kde-applications \
			${MODULES}

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE ?=	Yes

# XXX Keep in-sync with meta/kde
VERSION ?=		6.0.4

SITES ?=		${SITE_KDE:=stable/plasma/${VERSION}/}
EXTRACT_SUFX ?=		.tar.xz

RUN_DEPENDS +=		${MODKDE5_RUN_DEPENDS}
BUILD_DEPENDS +=	${MODKDE5_BUILD_DEPENDS}

DIST_SUBDIR =		plasma
