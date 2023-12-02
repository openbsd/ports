COMMENT=	open standard for audio plugins

DISTNAME=	lv2-1.18.10

CATEGORIES=	audio

HOMEPAGE=	https://lv2plug.in

# ISC
PERMIT_PACKAGE= Yes

MODULES=	devel/meson

SITES=		https://lv2plug.in/spec/
EXTRACT_SUFX=	.tar.xz

# example plugins that enforce a dependency on x11/gtk+2
CONFIGURE_ARGS +=	-Dplugins=disabled

# needs py3-rdflib which is not ported
CONFIGURE_ARGS +=	-Ddocs=disabled \
			-Dtests=disabled

.include <bsd.port.mk>
