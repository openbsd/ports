COMMENT =		library to handle Apple Property List files

V=			2.5.0
DISTNAME =		libplist-${V}

SHARED_LIBS +=  plist-2.0            2.0      # 9.0
SHARED_LIBS +=  plist++-2.0          1.1      # 9.0

CATEGORIES =		devel audio

HOMEPAGE =		https://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/libimobiledevice/libplist/releases/download/${V}/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

# lots of bashisms for variable expension (FLAGS += -lfoo)
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash configure
BUILD_DEPENDS +=	shells/bash

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--without-cython

TEST_DEPENDS =		textproc/gdiff

pre-test:
	ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
