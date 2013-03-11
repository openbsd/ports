# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:09 espie Exp $

COMMENT =	compares and merges multiple files or directories

DISTNAME =	kdiff3-0.9.97
CATEGORIES =	devel x11/kde
HOMEPAGE =	http://kdiff3.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kdiff3/}

MAINTAINER =	Lawrence Teo <lteo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	ICE QtGui SM X11 Xext Xi Xinerama Xrender
WANTLIB +=	c fontconfig freetype m pthread stdc++

MODULES =	x11/qt4

SEPARATE_BUILD =	Yes

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS='${CXXFLAGS} -Wall -W $$(DEFINES)' \
		LINK="${CXX}"

DESTDIRNAME =	INSTALL_ROOT

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src-QT4/kdiff3.pro

do-configure:
	@cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 ${WRKSRC}/src-QT4/kdiff3.pro #CONFIG+=debug

.include <bsd.port.mk>
