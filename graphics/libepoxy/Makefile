# $OpenBSD: Makefile,v 1.1.1.1 2015/03/26 08:51:58 ajacoutot Exp $

COMMENT=		OpenGL dispatch library

V=			1.2
DISTNAME=		${GH_PROJECT}-${V}
GH_ACCOUNT=		anholt
GH_PROJECT=		libepoxy
GH_TAGNAME=		v${V}

SHARED_LIBS +=  epoxy                     0.0 # 0.0

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/anholt/libepoxy

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		ACLOCAL="aclocal -I${X11BASE}/share/aclocal" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi

	perl -pi -e 's,libGL.so.[0-9],libGL.so,g;' \
		-e 's,libEGL.so.[0-9],libEGL.so,g;' \
		-e 's,libGLESv2.so.[0-9],libGLESv2.so,g;' \
		-e 's,libGLESv1_CM.so.[0-9],libGLESv1_CM.so,g' \
		${WRKSRC}/src/dispatch_common.c \
		${WRKSRC}/test/dlwrap.c \
		${WRKSRC}/test/egl_and_glx_different_pointers.c \
		${WRKSRC}/test/egl_without_glx.c \
		${WRKSRC}/test/glx_alias_prefer_same_name.c \
		${WRKSRC}/test/glx_gles2.c

.include <bsd.port.mk>
