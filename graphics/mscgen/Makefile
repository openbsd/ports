# $OpenBSD: Makefile,v 1.6 2016/09/13 15:29:02 naddy Exp $

COMMENT=		utility to create Message Sequence Charts

DISTNAME=		mscgen-src-0.20
REVISION=		1
PKGNAME=		${DISTNAME:S/-src//}

CATEGORIES=		graphics

HOMEPAGE=		http://www.mcternan.me.uk/mscgen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

WANTLIB += c fontconfig freetype gd iconv jpeg m png pthread tiff vpx z

LIB_DEPENDS=		converters/libiconv \
			graphics/gd

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		exampledir="${PREFIX}/share/examples/mscgen/" \
			dist_doc_DATA="mscgen.lang"

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	@sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
