# $OpenBSD: Makefile,v 1.3 2010/06/18 13:30:17 espie Exp $

COMMENT =		K Desktop Environment, base runtime
DISTNAME =		kdebase-runtime-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kdnssd,kfile,khtml,kio,kjs,kmediaplayer,knewstuff2,knewstuff3,plasma,knotifyconfig,kparts,kpty,kutils,phonon,solid::x11/kde4/libs \
		phonon.>=5::multimedia/phonon \
		smbclient::net/samba

BUILD_DEPENDS +=	::databases/soprano
RUN_DEPENDS +=		::databases/soprano

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
WANTLIB += xine


.include <bsd.port.mk>
