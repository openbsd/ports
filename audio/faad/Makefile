COMMENT=	MPEG-2 and MPEG-4 AAC decoder

V=		2.11.2
GH_ACCOUNT=	knik0
GH_PROJECT=	faad2
GH_TAGNAME=	${V}
PKGNAME=	faad-${V}
CATEGORIES=	audio

SHARED_LIBS=	faad		4.0 \
		faad_drm	0.0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

MODULES=	devel/cmake

.include <bsd.port.mk>
