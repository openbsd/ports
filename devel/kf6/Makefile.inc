CATEGORIES +=		devel devel/kf6

VERSION ?=		${MODKF6_VERSION}
MAINTAINER ?=		Rafael Sadowski <rsadowski@openbsd.org>
HOMEPAGE ?=		https://projects.kde.org/projects/frameworks/${DISTNAME:C/-[0-9].*//}
PKGNAME ?=		kf6-${DISTNAME}

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE ?=	cmake
MODULES :=		devel/kf6 ${MODULES}

.if empty(GH_ACCOUNT)
EXTRACT_SUFX ?=		.tar.xz
.endif

# Detected locale "C" with character encoding "US-ASCII", which is not UTF-8.
# Qt depends on a UTF-8 locale, and has switched to "C.UTF-8" instead.
CONFIGURE_ENV +=	LC_ALL=en_US.UTF-8
MAKE_ENV +=		LC_ALL=en_US.UTF-8

SITES ?=		${SITE_KDE:=stable/frameworks/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

DIST_SUBDIR =		kde-kf6
