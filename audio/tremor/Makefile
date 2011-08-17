# $OpenBSD: Makefile,v 1.17 2011/08/17 12:38:35 jasper Exp $

COMMENT=	integer-only, fully Ogg Vorbis compliant decoder library

DISTNAME=	tremor-20080326
REVISION=	0
SHARED_LIBS +=	vorbisidec           2.0      # .1.2
CATEGORIES=	audio

HOMEPAGE=	http://www.xiph.org/vorbis/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/                       

# autogen.sh needs libtoolize
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/Tremor

post-extract:
	@perl -pi -e 's/\r\n/\n/g' ${WRKSRC}/Version_script.in

pre-configure:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
