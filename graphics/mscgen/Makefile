# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:54 espie Exp $

COMMENT=		utility to create Message Sequence Charts

DISTNAME=		mscgen-src-0.20
REVISION=		0
PKGNAME=		${DISTNAME:S/-src//}

CATEGORIES=		graphics

HOMEPAGE=		http://www.mcternan.me.uk/mscgen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

WANTLIB += c gd jpeg m png z fontconfig freetype

MODULES=		converters/libiconv

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		exampledir="${PREFIX}/share/examples/mscgen/" \
			dist_doc_DATA="mscgen.lang"

WRKDIST= 		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	@perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
