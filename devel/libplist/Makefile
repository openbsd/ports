COMMENT =		library to handle Apple Property List files

V=			2.2.0
DISTNAME =		libplist-${V}
REVISION =		0

SHARED_LIBS +=  plist-2.0            0.0      # 6.0
SHARED_LIBS +=  plist++-2.0          0.0      # 6.0

CATEGORIES =		devel audio

HOMEPAGE =		https://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/libimobiledevice/libplist/releases/download/${V}/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

# lots of bashisms for variable expension (FLAGS += -lfoo)
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash configure
BUILD_DEPENDS +=	shells/bash

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--without-cython

.include <bsd.port.mk>
