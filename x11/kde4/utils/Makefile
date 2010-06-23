# $OpenBSD: Makefile,v 1.6 2010/06/23 16:23:59 espie Exp $

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


LIB_DEPENDS += 	kdecore.>=8,kde3support,kdeui,kio,kparts,kfile,knewstuff2,krosscore,kutils,kpty,solid,khtml,kjs::x11/kde4/libs \
		kabc.>=5,kresources,kpimutils::x11/kde4/pimlibs \
		gmp::devel/gmp \
		qimageblitz::x11/kde4/qimageblitz \
		plasma,solidcontrol::x11/kde4/base-workspace \
		python2.6:python->=2.6,<2.7:lang/python/2.6 \
		archive::archivers/libarchive

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += Xrender c m pthread
WANTLIB += stdc++ util qca
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork QtScript

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
