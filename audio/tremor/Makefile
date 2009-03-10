# $OpenBSD: Makefile,v 1.9 2009/03/10 21:58:46 espie Exp $

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

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/                       

BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		:automake->=${AUTOMAKE_VERSION},<1.10:devel/automake/${AUTOMAKE_VERSION} \
		::devel/metaauto

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/Tremor

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
