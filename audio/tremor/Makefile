# $OpenBSD: Makefile,v 1.22 2015/03/16 18:07:37 naddy Exp $

COMMENT=	integer-only, fully Ogg Vorbis compliant decoder library

DISTNAME=	tremor-20120410
REVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://comstyle.com/source/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vorbisidec	3.0

HOMEPAGE=	http://www.xiph.org/vorbis/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ogg

LIB_DEPENDS=	audio/libogg

# autogen.sh needs libtoolize
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.10

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/Tremor

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
