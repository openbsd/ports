# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:09 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-1.0.1
CATEGORIES =		x11 net
REVISION =		0

SHARED_LIBS +=  freerdp-cache             0.0 # 1.0
SHARED_LIBS +=  freerdp-channels          0.0 # 1.0
SHARED_LIBS +=  freerdp-codec             0.0 # 1.0
SHARED_LIBS +=  freerdp-core              0.0 # 1.0
SHARED_LIBS +=  freerdp-gdi               0.0 # 1.0
SHARED_LIBS +=  freerdp-kbd               0.0 # 1.0
SHARED_LIBS +=  freerdp-rail              0.0 # 1.0
SHARED_LIBS +=  freerdp-utils             0.0 # 1.0

HOMEPAGE =		http://www.freerdp.com/

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xinerama Xv avcodec avutil c crypto
WANTLIB += pthread ssl xkbfile z cups

MASTER_SITES =		https://github.com/downloads/FreeRDP/FreeRDP/ \
			http://spacehopper.org/mirrors/

MODULES =		devel/cmake

BUILD_DEPENDS =		textproc/docbook \
			textproc/xmlto

LIB_DEPENDS =		graphics/ffmpeg \
			print/cups,-libs

CONFIGURE_ARGS +=	-DWITH_ALSA=Off

post-patch:
	perl -pi -e 's,/usr/local,${LOCALBASE},g; s,/usr/X11R6,${X11BASE},g;' \
	    ${WRKSRC}/CMakeLists.txt


.include <bsd.port.mk>
