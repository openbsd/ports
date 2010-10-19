# $OpenBSD: Makefile,v 1.7 2010/10/19 08:13:58 espie Exp $

COMMENT =		K Desktop Environment, base runtime
DISTNAME =		kdebase-runtime-${VERSION}

LIB_DEPENDS +=	::x11/kde4/libs \
		::multimedia/phonon \
		::net/samba \
		::databases/soprano \

SHARED_LIBS +=	kwalletbackend 		0.0	# 4.4
SHARED_LIBS +=	molletnetwork 		0.0	# 4.4
USE_GROFF =	Yes

WANTLIB += Half ICE Iex IlmImf IlmThread IlmThread Imath SM X11 Xau Xcursor \
	Xdmcp Xext Xft Xpm attica c exiv2 jpeg kde3support kdecore.>=8 kdesu \
	kdeui kdnssd kfile khtml kio kjs kmediaplayer knewstuff2 knewstuff3 \
	knotifyconfig kparts kpty kutils lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk nepomukquery phonon.>=5 plasma pthread \
	smbclient solid soprano sopranoclient sopranoserver stdc++ \
	streamanalyzer streams util xine


pre-install:
# these come from libs
	mkdir -p ${PREFIX}/share/doc/HTML/en/common
# these come from phonon
	mkdir -p ${PREFIX}/share/icons/oxygen

.include <bsd.port.mk>
