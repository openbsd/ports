# $OpenBSD: Makefile,v 1.6 2010/06/24 07:45:06 espie Exp $

COMMENT =		K Desktop Environment, web development
DISTNAME =		kdewebdev-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	klinkstatuscommon	0.0
SHARED_LIBS +=	kommandercore		0.0
SHARED_LIBS +=	kommanderwidgets	0.0

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,kparts,krossui,threadweaver,knewstuff2,kutils::x11/kde4/libs \
		mailtransport,kmime,kpimidentities::x11/kde4/pimlibs \
		tidy.>=1::www/tidy

WANTLIB += c xml2 xslt
WANTLIB += m pthread stdc++ z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
