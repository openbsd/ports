# $OpenBSD: Makefile,v 1.7 2010/08/31 08:22:04 jasper Exp $

COMMENT =		K Desktop Environment, admin tools
DISTNAME =		kdeadmin-${VERSION}

LIB_DEPENDS += 	::x11/kde4/libs \
		::x11/kde4/pimlibs
		
# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


WANTLIB += c kde3support kdecore.>=8 kdeui kio kldap kntlm lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m pthread stdc++


.include <bsd.port.mk>
