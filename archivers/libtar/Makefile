# $OpenBSD: Makefile,v 1.14 2016/11/05 15:13:54 jca Exp $

COMMENT=	C library for manipulating tar files

GH_ACCOUNT=	tklauser
GH_PROJECT=	libtar
GH_TAGNAME=	v1.2.20

SHARED_LIBS=	tar	0.1	# unknown

CATEGORIES=	archivers devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c z

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11

NO_TEST=		Yes

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --force --install

.include <bsd.port.mk>
