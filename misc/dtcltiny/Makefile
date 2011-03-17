# $OpenBSD: Makefile,v 1.1.1.1 2011/03/17 14:00:56 sebastia Exp $

COMMENT =		small SRCP client to control digital model trains

DISTNAME =		dtcltiny-0.8.4
CATEGORIES =		misc x11

HOMEPAGE =		http://dtcltiny.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dtcltiny/}	

MODULES =		x11/qt3
WANTLIB += 		ICE SM X11 Xext c jpeg m pthread stdc++ z

SEPARATE_BUILD =	simple
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=-L${LOCALBASE}/lib CFLAGS=-I${LOCALBASE}/include \
			UIC_PATH=${MODQT_UIC}
CONFIGURE_ARGS =	--with-qt-libraries=${MODQT_LIBDIR} \
			--with-qt-includes=${MODQT_INCDIR}


.include <bsd.port.mk>
