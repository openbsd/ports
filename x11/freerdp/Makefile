# $OpenBSD: Makefile,v 1.9 2012/02/24 09:41:43 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-1.0.0
WRKDIST =		${WRKDIR}/FreeRDP-FreeRDP-cd43ba1
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

WANTLIB += X11 Xcursor Xext Xinerama Xv avcodec avutil c crypto
WANTLIB += cups gsm m mp3lame ogg orc-0.4 pthread schroedinger-1.0
WANTLIB += speex ssl theoradec theoraenc vorbis vorbisenc vpx x264 xkbfile z

MASTER_SITES =		https://github.com/downloads/FreeRDP/FreeRDP/

MODULES =		converters/libiconv \
			devel/cmake

BUILD_DEPENDS =		textproc/xmlto

LIB_DEPENDS =		print/cups \
			graphics/ffmpeg

CONFIGURE_ARGS +=	-DWITH_ALSA=Off

post-patch:
	perl -pi -e 's,/usr/local,${LOCALBASE},g; s,/usr/X11R6,${X11BASE},g;' \
	    ${WRKSRC}/CMakeLists.txt


.include <bsd.port.mk>
