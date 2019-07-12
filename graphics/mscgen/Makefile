# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:04 sthen Exp $

COMMENT=		utility to create Message Sequence Charts

DISTNAME=		mscgen-src-0.20
REVISION=		2
PKGNAME=		${DISTNAME:S/-src//}

CATEGORIES=		graphics

HOMEPAGE=		http://www.mcternan.me.uk/mscgen/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

WANTLIB += c fontconfig freetype gd iconv jpeg m png pthread tiff webp z

LIB_DEPENDS=		converters/libiconv \
			graphics/gd

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		exampledir="${PREFIX}/share/examples/mscgen/" \
			dist_doc_DATA="mscgen.lang"

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	@sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
