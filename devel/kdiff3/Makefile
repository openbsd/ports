# $OpenBSD: Makefile,v 1.2 2011/09/06 20:03:52 landry Exp $

COMMENT =	compares and merges multiple files or directories
CATEGORIES =	devel x11/kde
HOMEPAGE =	http://kdiff3.sourceforge.net/

DISTNAME =	kdiff3-0.9.96

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kdiff3/}
MODULES =	x11/qt4

MAINTAINER =	Lawrence Teo <lteo@devio.us>

# GPLv2
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += QtGui c m pthread stdc++

LIB_DEPENDS = x11/qt4

SEPARATE_BUILD =	simple

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}

pre-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g" ${WRKSRC}/src-QT4/kdiff3.pro

do-configure:
	cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 ${WRKSRC}/src-QT4/kdiff3.pro #CONFIG+=debug

.include <bsd.port.mk>
