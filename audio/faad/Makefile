# gcc -iquote
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	MPEG-2 and MPEG-4 AAC decoder

V=		2.10.1
GH_ACCOUNT=	knik0
GH_PROJECT=	faad2
GH_TAGNAME=	${V}
PKGNAME=	faad-${V}
CATEGORIES=    	audio

SHARED_LIBS=	faad		4.0 \
		faad_drm	0.0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

# bootstrap checks for libtoolize
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
AUTORECONF=	./bootstrap
CONFIGURE_STYLE= autoreconf

.include <bsd.port.mk>
