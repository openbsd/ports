# $OpenBSD: Makefile,v 1.16 2013/01/27 10:06:50 sthen Exp $

COMMENT =	UPnP media server

VER =		0.12.1
DISTNAME =	mediatomb-${VER}
REVISION =	10

CATEGORIES =	multimedia

HOMEPAGE =	http://mediatomb.cc/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	avformat avutil c crypto curl exif expat ffmpegthumbnailer idn
WANTLIB +=	m magic mozjs mp4v2 pthread sqlite3 ssl stdc++ tag z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mediatomb/}

MODULES =	devel/gettext

LIB_DEPENDS =	audio/taglib \
		devel/libmagic \
		graphics/ffmpeg>=20121026 \
		graphics/ffmpegthumbnailer \
		graphics/libexif \
		lang/spidermonkey>=1.9v0 \
		net/curl \
		multimedia/libmp4v2

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--disable-inotify \
			--disable-lastfmlib \
			--disable-mysql \
			PTHREAD_LIBS="-pthread"
# Add "-I${WRKSRC}/src" to make mediatomb find its own dictionary.h first.
CONFIGURE_ENV =		CPPFLAGS="-I${WRKSRC}/src -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_execinfo_h=no \
			ac_cv_header_lwres_netdb_h=no
AUTOCONF_VERSION =	2.63

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mediatomb/
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} ${FILESDIR}/config.xml \
		${PREFIX}/share/examples/mediatomb/config.xml

.include <bsd.port.mk>
