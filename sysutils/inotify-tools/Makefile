COMMENT =	programs providing a simple interface to inotify
CATEGORIES =	sysutils

GH_ACCOUNT =	inotify-tools
GH_PROJECT =	inotify-tools
GH_TAGNAME =	4.23.9.0
REVISION =	0

SHARED_LIBS =	inotifytools 1.0 # 4.1

# GPLv2
PERMIT_PACKAGE =	Yes

# C++
COMPILER =		base-clang ports-gcc
AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/inotify/" \
			LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath ${LOCALBASE}/lib/inotify"
CONFIGURE_ARGS =	--disable-doxygen
LIB_DEPENDS =		devel/libinotify
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

WANTLIB += ${COMPILER_LIBCXX} c m lib/inotify/inotify

pre-configure:
	cd ${WRKSRC} && \
		libtoolize && \
		env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	# Both are linux-only and not actually installed
	rm ${PREFIX}/man/man1/fsnotify{wait.1,watch.1}

.include <bsd.port.mk>
