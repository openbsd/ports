# $OpenBSD: Makefile,v 1.1.1.1 2011/04/06 12:44:39 jasper Exp $

COMMENT=		utility to create Message Sequence Charts

DISTNAME=		mscgen-src-0.20
PKGNAME=		${DISTNAME:S/-src//}

CATEGORIES=		graphics

HOMEPAGE=		http://www.mcternan.me.uk/mscgen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

WANTLIB += c gd jpeg m png z

MODULES=		converters/libiconv

LIB_DEPENDS=		graphics/gd

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		exampledir="${PREFIX}/share/examples/mscgen/" \
			dist_doc_DATA="mscgen.lang"

WRKDIST= 		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	@perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/renderercheck.sh

.include <bsd.port.mk>
