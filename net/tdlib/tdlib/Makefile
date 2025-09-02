COMMENT =		cross-platform library for building Telegram clients

SHARED_LIBS =		tdjson	0.1

WANTLIB =		${COMPILER_LIBCXX} crypto m ssl z

CONFIGURE_ARGS +=	-DCCACHE_FOUND=OFF \
			-DPHP_FOUND=OFF

.include <bsd.port.mk>
