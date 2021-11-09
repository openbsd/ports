# $OpenBSD: Makefile.inc,v 1.13 2021/11/09 08:25:52 rsadowski Exp $

CATEGORIES +=		x11/kde-plasma

MAINTAINER ?=		Rafael Sadowski <rsadowski@openbsd.org>

# Do not rely on devel/cmake here: additional modules that are
# set up in ports may have, say, lang/python before devel/cmake,
# thus making lang/python evaluating first. And when lang/python
# sees empty CONFIGURE_STYLE, it forces that this is Python
# module port, and breaks build.
CONFIGURE_STYLE ?=	cmake

MODULES :=		devel/kf5 \
			x11/kde-applications \
			${MODULES}

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE ?=	Yes

VERSION ?=		5.23.2

MASTER_SITES =		${MASTER_SITE_KDE:=stable/plasma/${VERSION}/}

RUN_DEPENDS +=		${MODKDE5_RUN_DEPENDS}
BUILD_DEPENDS +=	${MODKDE5_BUILD_DEPENDS}

DIST_SUBDIR =	plasma
