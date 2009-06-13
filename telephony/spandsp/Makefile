# $OpenBSD: Makefile,v 1.7 2009/06/13 07:55:35 sthen Exp $

COMMENT=	DSP library for telephony

DISTNAME=	spandsp-0.0.6pre12
CATEGORIES=	telephony
MASTER_SITES=	${HOMEPAGE}downloads/spandsp/
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	spandsp	5.0

HOMEPAGE=	http://www.soft-switch.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	jpeg m z

WRKDIST=	${WRKDIR}/spandsp-0.0.6

LIB_DEPENDS+=	tiff::graphics/tiff

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-mmx
.endif

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+= --enable-sse --enable-sse2
.endif"

# Test suite included, but requires many build dependencies
# and proprietary files from standards bodies.
NO_REGRESS=	Yes

DOCS=		README DueDiligence

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spandsp
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/spandsp
.endfor

.include <bsd.port.mk>
