# $OpenBSD: Makefile,v 1.2 2010/10/18 21:25:07 espie Exp $

COMMENT =	UPnP media server

VER =		0.12.1
DISTNAME =	mediatomb-${VER}

CATEGORIES =	multimedia

HOMEPAGE =	http://mediatomb.cc/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	avformat avutil c crypto curl exif expat ffmpegthumbnailer idn
WANTLIB +=	js m magic mp4v2 pthread sqlite3 ssl stdc++ tag z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mediatomb/}

MODULES =	converters/libiconv

LIB_DEPENDS =	::audio/taglib \
		::databases/sqlite3 \
		::devel/libmagic \
		::graphics/ffmpegthumbnailer \
		::graphics/libexif \
		::lang/spidermonkey \
		::net/curl

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--disable-inotify \
			--disable-lastfmlib \
			--disable-mysql \
			PTHREAD_LIBS="-pthread"
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
AUTOCONF_VERSION =	2.63
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mediatomb/
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} ${FILESDIR}/config.xml \
		${PREFIX}/share/examples/mediatomb/config.xml

.include <bsd.port.mk>
