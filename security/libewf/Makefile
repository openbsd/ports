COMMENT =		access the Expert Witness Compression Format

VERSION =		20140808
DISTNAME =		libewf-${VERSION}
EPOCH =			0
REVISION =		5

SHARED_LIBS +=		ewf                       1.0 # 3.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libewf-legacy/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio bz2 c crypto fuse iconv intl m pthread smdev smraw util
WANTLIB += z

SITES =	https://github.com/libyal/libewf-legacy/releases/download/${VERSION}/

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-setuptools

LIB_DEPENDS +=		devel/libbfio \
			archivers/bzip2 \
			sysutils/libsmdev \
			sysutils/libsmraw

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix='${PREFIX}' \
			--mandir=${PREFIX}/man \
			--enable-python3 \
			--with-pythondir3=${MODPY_SITEPKG} \
			--with-libuuid=no \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
