# $OpenBSD: Makefile,v 1.2 2008/10/28 16:44:58 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	rdf framework
CATEGORIES =	databases devel textproc sysutils

SHARED_LIBS += soprano             0.0 # .4.0
SHARED_LIBS += sopranoclient       0.0 # .1.0
SHARED_LIBS += sopranoindex        0.0 # .1.0
SHARED_LIBS += sopranoserver       0.0 # .1.0

HOMEPAGE =	http://soprano.sourceforge.net/
DISTNAME =	soprano-2.1.1
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=soprano/}

# GPL/LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES +=		devel/cmake x11/qt4
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple

LIB_DEPENDS += clucene::textproc/clucene

post-extract:
	cd ${WRKDIST}/cmake/modules && rm FindQt4.cmake MacroPushRequiredVars.cmake
WANTLIB += QtCore QtDBus QtNetwork
WANTLIB += c m pthread stdc++ z
WANTLIB += glib-2.0 gthread-2.0



.include <bsd.port.mk>
