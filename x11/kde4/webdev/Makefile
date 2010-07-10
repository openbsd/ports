# $OpenBSD: Makefile,v 1.7 2010/07/10 16:57:23 espie Exp $

COMMENT =		K Desktop Environment, web development
DISTNAME =		kdewebdev-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	klinkstatuscommon	0.0
SHARED_LIBS +=	kommandercore		0.0
SHARED_LIBS +=	kommanderwidgets	0.0

LIB_DEPENDS +=	::x11/kde4/libs \
		::x11/kde4/pimlibs \
		::www/tidy

WANTLIB += c kde3support kdecore.>=8 kdeui khtml kio kjs kmime knewstuff2 \
	kparts kpimidentities krossui kutils lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml m \
	mailtransport pthread stdc++ threadweaver tidy.>=1 xml2 xslt z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
