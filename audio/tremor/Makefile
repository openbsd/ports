# $OpenBSD: Makefile,v 1.23 2018/03/17 18:27:11 naddy Exp $

COMMENT=	integer-only, fully Ogg Vorbis compliant decoder library

DISTNAME=	tremor-20180316
CATEGORIES=	audio
MASTER_SITES=	http://shell.uugrn.org/~naddy/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	vorbisidec	3.0	# 1.3

HOMEPAGE=	https://www.xiph.org/vorbis/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ogg

LIB_DEPENDS=	audio/libogg

# autogen.sh needs libtoolize
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/tremor

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
