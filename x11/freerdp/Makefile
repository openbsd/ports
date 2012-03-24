# $OpenBSD: Makefile,v 1.10 2012/03/24 18:53:27 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-1.0.1
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

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

FLAVORS =	no_cups
FLAVOR ?=

WANTLIB += X11 Xcursor Xext Xinerama Xv avcodec avutil c crypto
WANTLIB += pthread ssl xkbfile z

MASTER_SITES =		https://github.com/downloads/FreeRDP/FreeRDP/ \
			http://spacehopper.org/mirrors/

MODULES =		converters/libiconv \
			devel/cmake

BUILD_DEPENDS =		textproc/docbook \
			textproc/xmlto

LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS +=	-DWITH_ALSA=Off

.if ${FLAVOR:Mno_cups}
CONFIGURE_ARGS +=	-DWITH_CUPS=Off
.else
LIB_DEPENDS +=		print/cups
WANTLIB +=		cups
.endif

post-patch:
	perl -pi -e 's,/usr/local,${LOCALBASE},g; s,/usr/X11R6,${X11BASE},g;' \
	    ${WRKSRC}/CMakeLists.txt


.include <bsd.port.mk>
