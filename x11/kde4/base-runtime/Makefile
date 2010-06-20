# $OpenBSD: Makefile,v 1.4 2010/06/20 09:36:14 espie Exp $

COMMENT =		K Desktop Environment, base runtime
DISTNAME =		kdebase-runtime-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kdnssd,kfile,khtml,kio,kjs,kmediaplayer,knewstuff2,knewstuff3,plasma,knotifyconfig,kparts,kpty,kutils,phonon,solid,nepomuk,nepomukquery::x11/kde4/libs \
		phonon.>=5::multimedia/phonon \
		smbclient::net/samba \
		soprano,sopranoclient,sopranoserver::databases/soprano \

SHARED_LIBS +=	kwalletbackend 		0.0	# 4.4
SHARED_LIBS +=	molletnetwork 		0.0	# 4.4

WANTLIB += IlmThread
WANTLIB += ICE SM X11 Xau Xcursor Xdmcp
WANTLIB += Xext Xft Xpm
WANTLIB += c jpeg m pthread
WANTLIB += stdc++ util
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml QtScript
WANTLIB += Half Iex IlmImf Imath IlmThread
WANTLIB += attica exiv2
WANTLIB += xine streamanalyzer streams

pre-install:
# these come from libs
	mkdir -p ${PREFIX}/share/doc/HTML/en/common
# these come from phonon
	mkdir -p ${PREFIX}/share/icons/oxygen

.include <bsd.port.mk>
