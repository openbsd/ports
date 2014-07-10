# $OpenBSD: Makefile,v 1.17 2014/07/10 13:25:46 giovanni Exp $

SHARED_ONLY =		Yes

V =			1.0.2
COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-$V
REVISION =		1
DISTFILES =		${DISTNAME}{$V}.tar.gz
WRKDIST =		${WRKDIR}/FreeRDP-$V
CATEGORIES =		x11 net

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
WANTLIB += pcsclite pthread ssl xkbfile z cups

MASTER_SITES =		https://github.com/FreeRDP/FreeRDP/archive/ \
			http://spacehopper.org/mirrors/

MODULES =		devel/cmake

BUILD_DEPENDS =		textproc/docbook \
			textproc/xmlto

LIB_DEPENDS =		graphics/ffmpeg \
			print/cups,-libs \
			security/pcsc-lite

CONFIGURE_ARGS +=	-DWITH_ALSA=Off \
			-DWITH_PCSC=On

post-patch:
	perl -pi -e 's,/usr/local,${LOCALBASE},g; s,/usr/X11R6,${X11BASE},g;' \
	    ${WRKSRC}/CMakeLists.txt


.include <bsd.port.mk>
