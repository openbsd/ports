# $OpenBSD: Makefile.inc,v 1.2 2015/07/05 00:46:14 zhuk Exp $

CATEGORIES +=	multimedia
PKGNAME ?=	${DISTNAME:C/-backend//}

# LGPL 2.1
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		x11/kde4 multimedia/phonon
MODKDE4_USE =
MODPHONON_PLUGIN_DEPS =	No

CONFIGURE_ARGS =	-DPhonon_DIR:String=${LOCALBASE}/lib/cmake/phonon

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/phonon/${DISTNAME:C/-[0-9].*//}/${VERSION}/src/}
