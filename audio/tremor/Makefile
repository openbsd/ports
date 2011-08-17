# $OpenBSD: Makefile,v 1.16 2011/08/17 12:35:23 jasper Exp $

COMMENT=	integer-only, fully Ogg Vorbis compliant decoder library

DISTNAME=	tremor-20080326
SHARED_LIBS +=	vorbisidec           2.0      # .1.2
CATEGORIES=	audio

HOMEPAGE=	http://www.xiph.org/vorbis/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/                       

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

# autogen.sh needs libtoolize and our libtool doesn't grok
# --version-script
USE_LIBTOOL=	gnu
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/Tremor

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
