# $OpenBSD: Makefile,v 1.11 2012/08/22 20:14:06 naddy Exp $

COMMENT=		portable cross-platform audio API
DISTNAME=		portaudio-svn-1406
REVISION=		3

SHARED_LIBS=		portaudio	1.0

CATEGORIES=		audio
HOMEPAGE=		http://www.portaudio.com/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread sndio

MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		--without-alsa --without-oss --without-jack

# builds non-automated, interactive tests in ${WRKBUILD}/bin
REGRESS_TARGET=		tests
REGRESS_IS_INTERACTIVE=	Yes

CFLAGS+=		-DALLOW_SMP_DANGERS

post-extract:
	@mkdir -p ${WRKSRC}/src/hostapi/sndio
	@cp ${FILESDIR}/pa_sndio.c ${WRKSRC}/src/hostapi/sndio

.include <bsd.port.mk>
