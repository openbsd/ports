COMMENT =		library to support cross-platform AES encryption

VERSION =		20251121
BASENAME =		libcaes
DISTNAME =		${BASENAME}-alpha-${VERSION}
PKGNAME =		${DISTNAME:S/-alpha//}

SHARED_LIBS +=		caes			0.0 # 1.0

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += crypto iconv intl m pthread ssl util

CONFIGURE_ARGS +=	--prefix='${PREFIX}' \
			--mandir=${PREFIX}/man \
			--enable-python \
			--with-pythondir=${MODPY_SITEPKG} \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

NO_TEST =		Yes

.include <bsd.port.mk>
