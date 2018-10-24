# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:07 sthen Exp $

COMMENT =		small SRCP client to control digital model trains

DISTNAME =		dtcltiny-0.8.4
REVISION=		3
CATEGORIES =		misc x11

HOMEPAGE =		http://dtcltiny.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dtcltiny/}

MODULES =		x11/qt3
WANTLIB += 		ICE SM X11 Xext c m png pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS=-L${LOCALBASE}/lib CFLAGS=-I${LOCALBASE}/include \
			UIC_PATH=${MODQT_UIC}
CONFIGURE_ARGS =	--with-qt-libraries=${MODQT_LIBDIR} \
			--with-qt-includes=${MODQT_INCDIR}


.include <bsd.port.mk>
