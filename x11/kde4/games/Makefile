# $OpenBSD: Makefile,v 1.6 2010/06/20 11:48:17 espie Exp $

COMMENT =		K Desktop Environment, games
DISTNAME =		kdegames-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	kdegames             5.0      # .4.0
SHARED_LIBS +=	kmahjongglib         0.0      # .1.0
SHARED_LIBS +=	kggzgames            0.0      # .4.0
SHARED_LIBS +=	kggzmod              0.0      # .4.0
SHARED_LIBS +=	kggznet              0.0      # .4.0
SHARED_LIBS +=	kolfprivate          0.0      # .4.0
SHARED_LIBS +=	pala          	     0.0      # .0.1


BUILD_DEPENDS += ::x11/kde4/automoc
LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,kdnssd,kio,knotifyconfig,knewstuff2::x11/kde4/libs \
		phonon.>=5::multimedia/phonon

# for the khelpcenter
RUN_DEPENDS +=	::x11/kde4/base-runtime

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += c m pthread
WANTLIB += stdc++
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml QtScript 
WANTLIB += GL GLU

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
