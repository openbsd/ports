# $OpenBSD: Makefile.inc,v 1.6 2019/07/12 21:07:46 sthen Exp $

CATEGORIES +=	multimedia

# LGPL 2.1
PERMIT_PACKAGE =	Yes

FLAVOR ?=
.if ${FLAVOR:Mqt5}
MODULES =		devel/kf5
PKGNAME ?=		${DISTNAME:C/-backend/-qt5/}
FULLPKGNAME ?=		${DISTNAME:C/-backend/-qt5/}
BACKEND_DIR =		lib/qt5/plugins/phonon4qt5_backend
CONFIGURE_ARGS =	-DPhonon_DIR:String=${LOCALBASE}/lib/cmake/phonon4qt5 \
			-DPHONON_BUILD_PHONON4QT5=Yes
.else
PKGNAME ?=		${DISTNAME:C/-backend//}
FULLPKGNAME ?=		${DISTNAME:C/-backend//}
MODULES =		x11/kde4
MODKDE4_USE =
BACKEND_DIR =		lib/kde4/plugins/phonon_s_backend
CONFIGURE_ARGS =	-DPhonon_DIR:String=${LOCALBASE}/lib/cmake/phonon
.endif

MODULES +=		multimedia/phonon
MODPHONON_PLUGIN_DEPS =	No
SUBST_VARS =		BACKEND_DIR

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>
