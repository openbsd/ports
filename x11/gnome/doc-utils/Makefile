# $OpenBSD: Makefile,v 1.43 2011/03/22 15:48:18 ajacoutot Exp $

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.20.5

CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook \
		sysutils/ggrep \
		textproc/rarian
RUN_DEPENDS=	devel/gettext \
		misc/gnugetopt \
		textproc/libxml,-python \
		textproc/libxslt,-python \
		textproc/rarian

USE_LIBTOOL=	No
USE_GROFF=	Yes
CONFIGURE_ARGS=	--disable-scrollkeeper
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=	pkgconfigdir="${PREFIX}/lib/pkgconfig/"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/xml2po/

.include <bsd.port.mk>
