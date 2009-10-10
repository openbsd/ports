# $OpenBSD: Makefile,v 1.25 2009/10/10 13:49:57 ajacoutot Exp $

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.18.0

CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		:docbook-*:textproc/docbook \
		::sysutils/ggrep \
		::textproc/rarian
RUN_DEPENDS=	::devel/gettext \
		:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt,-python \
		::textproc/rarian

USE_LIBTOOL=	No
CONFIGURE_ARGS=	--disable-scrollkeeper
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/xml2po

.include <bsd.port.mk>
