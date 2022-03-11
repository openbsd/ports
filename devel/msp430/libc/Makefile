COMMENT=		libc for ${TARGET}

TOOL=			${TARGET}-libc
TOOL_V= 		20120224
REVISION=		0

LTS_PATCHES=		msp430-libc-20120224-sf3522752.patch

CONFIGURE_STYLE=	# This space intentionally left blank.

RUN_DEPENDS=		devel/msp430/gcc>=4.6.3
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}

WRKSRC= 		${WRKDIST}/src

SEPARATE_BUILD= 	No

.include <bsd.port.mk>
