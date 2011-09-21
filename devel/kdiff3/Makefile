# $OpenBSD: Makefile,v 1.4 2011/09/21 08:08:18 ajacoutot Exp $

COMMENT =	compares and merges multiple files or directories

DISTNAME =	kdiff3-0.9.96
REVISION =	1
CATEGORIES =	devel x11/kde
HOMEPAGE =	http://kdiff3.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kdiff3/}

MAINTAINER =	Lawrence Teo <lteo@devio.us>

# GPLv2
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =	QtGui c m pthread stdc++

MODULES =	x11/qt4

SEPARATE_BUILD =	simple

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS='${CXXFLAGS} -fno-wrapv -pthread -Wall -W $$(DEFINES)' \
		LINK="${CXX}"

DESTDIRNAME =	INSTALL_ROOT

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src-QT4/kdiff3.pro

do-configure:
	@cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 ${WRKSRC}/src-QT4/kdiff3.pro #CONFIG+=debug

.include <bsd.port.mk>
