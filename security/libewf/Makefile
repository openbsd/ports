COMMENT =		access the Expert Witness Compression Format

VERSION =		20140816
DISTNAME =		libewf-${VERSION}
EPOCH =			0

SHARED_LIBS +=		ewf                       1.0 # 3.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libewf-legacy/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread smdev smraw util ssl
WANTLIB += z

SITES =	https://github.com/libyal/libewf-legacy/releases/download/${VERSION}/

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-setuptools

LIB_DEPENDS +=		devel/libbfio \
			sysutils/libsmdev \
			sysutils/libsmraw

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix='${PREFIX}' \
			--mandir=${PREFIX}/man \
			--enable-python \
			--with-pythondir=${MODPY_SITEPKG} \
			--with-libuuid=no \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
