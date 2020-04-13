# $OpenBSD: Makefile,v 1.13 2020/04/13 18:39:34 kmos Exp $

COMMENT =		small SRCP client to control digital model trains

EPOCH =			0
DISTNAME =		dtcltiny-0.4.5
CATEGORIES =		misc x11
REVISION =		0

HOMEPAGE =		http://dtcltiny.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dtcltiny/}

MODULES =		x11/qt5
WANTLIB += 		c m pthread ${COMPILER_LIBCXX}
WANTLIB +=		Qt5Core Qt5Gui Qt5Network Qt5Widgets

COMPILER =		base-clang ports-gcc base-gcc

LDFLAGS =		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="${LDFLAGS}" CFLAGS=-I${LOCALBASE}/include \
			UIC_PATH=${MODQT_UIC}
CONFIGURE_ARGS =	--with-qt-libraries=${MODQT_LIBDIR} \
			--with-qt-includes=${MODQT_INCDIR}


.include <bsd.port.mk>
