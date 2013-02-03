# $OpenBSD: Makefile,v 1.11 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, games
DISTNAME =		kdegames-${VERSION}

SHARED_LIBS +=	kdegames             5.0      # .4.0
SHARED_LIBS +=	kmahjongglib         0.0      # .1.0
SHARED_LIBS +=	kggzgames            0.0      # .4.0
SHARED_LIBS +=	kggzmod              0.0      # .4.0
SHARED_LIBS +=	kggznet              0.0      # .4.0
SHARED_LIBS +=	kolfprivate          0.0      # .4.0
SHARED_LIBS +=	pala          	     0.0      # .0.1
SHARED_LIBS +=	iris_ksirk    	     0.0      # .2.0


BUILD_DEPENDS += devel/automoc
LIB_DEPENDS +=	x11/kde4/libs \
		multimedia/phonon

# for the khelpcenter
RUN_DEPENDS +=	x11/kde4/base-runtime

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm c kde3support kdecore>=8 \
	kdeui kdnssd kio knewstuff2 knotifyconfig lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL \
	lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml m phonon>=5 pthread qca \
	stdc++ z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
