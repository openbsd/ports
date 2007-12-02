# $OpenBSD: Makefile,v 1.2 2007/12/02 13:55:21 bernd Exp $

COMMENT=	canvas API for X
DISTNAME=	evas-20071107
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	evas                 0.0      # .9.9

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xrender expat fontconfig freetype \
			jpeg m z

USE_X11=		Yes
USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

LIB_DEPENDS=		gif::graphics/libungif \
			png::graphics/png \
			tiff::graphics/tiff \
			edb::x11/e17/edb \
			eet::x11/e17/eet

CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=		--disable-image-loader-svg --enable-image-loader-edb

.if ${MACHINE_ARCH} == "amd64"
EVAS_ARCH=		x86_64
.else
EVAS_ARCH=		${MACHINE_ARCH}
.endif

SUBST_VARS=		EVAS_ARCH

.include <bsd.port.mk>
