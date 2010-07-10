# $OpenBSD: Makefile,v 1.7 2010/07/10 16:57:23 espie Exp $

COMMENT =		K Desktop Environment, utils
DISTNAME =		kdeutils-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=  kerfuffle            0.0      # .4.0
SHARED_LIBS +=  superkaramba         0.0      # .4.0
SHARED_LIBS +=	kastencontrollers 	0.0 # 4.4
SHARED_LIBS +=	kastencore 		0.0 # 4.4
SHARED_LIBS +=	kastengui 		0.0
SHARED_LIBS +=	kdelirc_shared 		0.0
SHARED_LIBS +=	oktetacore		0.0
SHARED_LIBS +=	oktetagui		0.0
SHARED_LIBS +=	oktetakastencontrollers	0.0
SHARED_LIBS +=	oktetakastencore	0.0
SHARED_LIBS +=	oktetakastengui 	0.0


LIB_DEPENDS += 	::x11/kde4/libs \
		::x11/kde4/pimlibs \
		::devel/gmp \
		::x11/kde4/qimageblitz \
		::x11/kde4/base-workspace \
		::x11/kde4/base \
		:python->=2.6,<2.7:lang/python/2.6 \
		::archivers/libarchive

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender archive c gmp kabc.>=5 \
	kde3support kdecore.>=8 kdeui kfile khtml kio kjs knewstuff2 konq \
	kparts kpimutils kpty kresources krosscore kutils lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript \
	lib/qt4/QtSvg lib/qt4/QtXml m plasma pthread python2.6 qca qimageblitz \
	solid solidcontrol stdc++ util

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
