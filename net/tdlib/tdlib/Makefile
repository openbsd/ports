COMMENT =		cross-platform library for building Telegram clients
REVISION =		0

SHARED_LIBS =		tdjson	0.1

WANTLIB =		${COMPILER_LIBCXX} crypto m ssl z

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PROGRAM_ccache=ON \
			-DCMAKE_DISABLE_FIND_PROGRAM_php=ON

.include <bsd.port.mk>
