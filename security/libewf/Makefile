# $OpenBSD: Makefile,v 1.5 2017/11/04 10:49:22 rpointel Exp $

COMMENT =		access the Expert Witness Compression Format

VERSION =		20170703
DISTNAME =		libewf-experimental-${VERSION}
PKGNAME =		libewf-${VERSION}

SHARED_LIBS +=		ewf                       1.0 # 3.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libewf

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio bz2 c crypto fuse m pthread ${MODPY_WANTLIB}
WANTLIB += smdev smraw util z

MASTER_SITES =		https://github.com/libyal/libewf/releases/download/${VERSION}/

MODULES =		devel/gettext \
			lang/python
LIB_DEPENDS +=		devel/libbfio \
			archivers/bzip2 \
			sysutils/libsmdev \
			sysutils/libsmraw

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--enable-python \
			--with-pyprefix=${LOCALBASE} \
			--with-libuuid=no \
			AWK=/usr/bin/awk \
			MKDIR_P='/bin/mkdir -p'

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
