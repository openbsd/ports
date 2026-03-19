COMMENT =		library to access the Windows 9x/Me registry files

VERSION =		20240419
BASENAME =		libcreg
DISTNAME =		${BASENAME}-experimental-${VERSION}
PKGNAME =		${DISTNAME:S/-experimental//}

SHARED_LIBS +=		creg			0.0 # 1.0

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += c fuse iconv intl m pthread util

CONFIGURE_ARGS +=	--prefix='${PREFIX}' \
			--mandir=${PREFIX}/man \
			--enable-python \
			--with-pythondir=${MODPY_SITEPKG} \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

NO_TEST =		Yes

.include <bsd.port.mk>
