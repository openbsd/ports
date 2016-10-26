# $OpenBSD: Makefile,v 1.1.1.1 2016/10/26 05:45:26 rpointel Exp $

COMMENT =		access the Expert Witness Compression Format

VERSION =		20160424
DISTNAME =		libewf-experimental-${VERSION}
PKGNAME =		libewf-${VERSION}

SHARED_LIBS +=		ewf                       0.0 # 3.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libewf

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio bz2 c crypto fuse m pthread ${MODPY_WANTLIB} util z

MASTER_SITES =		https://github.com/libyal/libewf/releases/download/${VERSION}/

MODULES =		devel/gettext \
			lang/python
LIB_DEPENDS +=		devel/libbfio \
			archivers/bzip2

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--enable-python \
			--with-pyprefix=${LOCALBASE}

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
