COMMENT =		library for encryption formats

VERSION =		20240414
BASENAME =		libfcrypto
DISTNAME =		${BASENAME}-alpha-${VERSION}
PKGNAME =		${DISTNAME:S/-alpha//}

SHARED_LIBS +=		fcrypto 0.0 # 1.0

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += iconv intl m pthread util

CONFIGURE_ARGS +=	--prefix='${PREFIX}' \
			--mandir=${PREFIX}/man \
			--enable-python \
			--with-pythondir=${MODPY_SITEPKG} \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

NO_TEST =	Yes

.include <bsd.port.mk>
