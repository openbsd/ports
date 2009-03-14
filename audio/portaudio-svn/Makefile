# $OpenBSD: Makefile,v 1.6 2009/03/14 02:31:40 jakemsr Exp $

COMMENT=		portable cross-platform audio API
DISTNAME=		portaudio-svn-1406

SHARED_LIBS=		portaudio	0.0

CATEGORIES=		audio
HOMEPAGE=		http://www.portaudio.com/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m sndio

MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

LIB_DEPENDS=		jack::audio/jack

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		--without-alsa --without-oss

# builds non-automated, interactive tests in ${WRKBUILD}/bin
REGRESS_TARGET=		tests
REGRESS_IS_INTERACTIVE=	Yes

CFLAGS+=		-DALLOW_SMP_DANGERS

post-extract:
	@mkdir -p ${WRKSRC}/src/hostapi/sndio
	@cp ${FILESDIR}/pa_sndio.c ${WRKSRC}/src/hostapi/sndio

.include <bsd.port.mk>
