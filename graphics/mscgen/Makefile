# $OpenBSD: Makefile,v 1.5 2015/10/08 12:02:03 jasper Exp $

COMMENT=		utility to create Message Sequence Charts

DISTNAME=		mscgen-src-0.20
REVISION=		1
PKGNAME=		${DISTNAME:S/-src//}

CATEGORIES=		graphics

HOMEPAGE=		http://www.mcternan.me.uk/mscgen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

WANTLIB += c fontconfig freetype gd jpeg m png pthread tiff vpx z

MODULES=		converters/libiconv

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		exampledir="${PREFIX}/share/examples/mscgen/" \
			dist_doc_DATA="mscgen.lang"

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	@sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
