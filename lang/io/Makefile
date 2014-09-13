# $OpenBSD: Makefile,v 1.16 2014/09/13 18:09:21 brad Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS =i386 amd64

COMMENT =	embeddable prototype-based language

DISTNAME =	stevedekorte-io-2011.09.12-106-g02f9800
PKGNAME =	io-20110905
REVISION =	11

CATEGORIES =	lang

SHARED_LIBS =	iovmall			0.0 \
		basekit			0.0 \
		coroutine		0.0 \
		garbagecollector	0.0

MASTER_SITES =  http://spacehopper.org/mirrors/

HOMEPAGE =	http://iolanguage.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xi Xmu atk-1.0 c cairo clutter-1.0 curses
WANTLIB += dbi edit event_core event_extra freetype glib-2.0 glut gmp
WANTLIB += jpeg loudmouth-1 lzo2 m memcached mysqlclient ogg pango-1.0
WANTLIB += pcre pcreposix png pthread ${MODPY_WANTLIB} qdbm readline
WANTLIB += sndfile sqlite3 theora tiff uuid vorbis xml2 yajl z

LIB_DEPENDS =	archivers/lzo2 \
		audio/libsndfile \
		databases/libdbi \
		databases/mariadb \
		databases/qdbm \
		devel/atk \
		devel/gmp \
		devel/libevent2 \
		devel/libmemcached \
		devel/libyajl \
		devel/pango \
		devel/pcre \
		graphics/cairo \
		graphics/clutter/core \
		graphics/freeglut \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		lang/python/2.7 \
		multimedia/libtheora \
		net/loudmouth \
		sysutils/e2fsprogs>=1.42.7 \
		textproc/libxml,no_python

MODULES =	devel/cmake \
		devel/gettext \
		lang/python

WRKDIST = ${WRKDIR}/stevedekorte-io-02f9800
WRKBUILD = ${WRKSRC}/build

CONFIGURE_ARGS =-DATK_NAMES=atk-1.0 \
		-DCLUTTER_NAMES=clutter-1.0 \
		-DEVENT_NAMES=event_core \
		-DUUID_INCLUDE_DIR=${LOCALBASE}/include \
		-DMYSQL_INCLUDE_DIR=${LOCALBASE}/include/mysql \
		-DCLUTTER_INCLUDE_DIR=${LOCALBASE}/include/clutter-1.0 \
		-DEVENT_INCLUDE_DIR=${LOCALBASE}/include/event2

# Special hacking to get the Socket addon working, since it requires
# libevent2 functions, but seems to use libevent1 headers.
pre-configure:
	perl -pi -e 's/\#include \<evhttp\.h\>/#include <http.h>\n#include <http_struct.h>\n#include <keyvalq_struct.h>\n#include <http_compat.h>/' \
		${WRKSRC}/addons/Socket/source/Io*.h
	perl -pi -e 's/\#include \<event\.h\>/#include <event.h>\n#include <event_struct.h>\n#include <buffer_compat.h>/' \
		${WRKSRC}/addons/Socket/source/Io*.h
	${SUBST_CMD} ${WRKSRC}/addons/Clutter/CMakeLists.txt
# Remove obsolete local FindFreetype.cmake module which is not
# compatible with Freetype 2.5
	rm ${WRKSRC}/modules/FindFreetype.cmake

pre-install:
	cp -R ${WRKBUILD}/_build/headers ${PREFIX}/include/io
	find ${WRKDIST} -name '*.orig' -or -name '*.beforesubst' -print0 | \
		xargs -r0 rm

post-install:
	rm ${WRKINST}/${LOCALBASE}/lib/io/addons/*/*.orig
	rm ${WRKINST}/${LOCALBASE}/lib/io/addons/*/source/*.orig

do-test:
	cd ${WRKBUILD} && _build/binaries/io \
		../libs/iovm/tests/correctness/run.io

.include <bsd.port.mk>
