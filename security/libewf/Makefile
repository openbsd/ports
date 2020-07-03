# $OpenBSD: Makefile,v 1.13 2020/07/03 21:13:05 sthen Exp $

COMMENT =		access the Expert Witness Compression Format

VERSION =		20140808
DISTNAME =		libewf-${VERSION}
EPOCH =			0
REVISION =		0

SHARED_LIBS +=		ewf                       1.0 # 3.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libewf-legacy/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio bz2 c crypto fuse iconv intl m pthread smdev smraw util
WANTLIB += z

MASTER_SITES =		https://github.com/libyal/libewf-legacy/releases/download/${VERSION}/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/gettext,-tools

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
