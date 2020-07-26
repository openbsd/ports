# $OpenBSD: Makefile,v 1.9 2020/07/26 20:24:16 kmos Exp $

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

# Fix undefined references to freetype and fontconfig symbols
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
.endif

pre-configure:
	@sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
