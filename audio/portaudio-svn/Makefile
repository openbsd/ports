# $OpenBSD: Makefile,v 1.4 2008/03/24 05:26:46 jakemsr Exp $

COMMENT=		portable cross-platform audio API
DISTNAME=		portaudio-svn-1360

SHARED_LIBS=		portaudio	0.0

CATEGORIES=		audio
HOMEPAGE=		http://www.portaudio.com/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m ossaudio

MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

LIB_DEPENDS=		jack::audio/jack

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-alsa

# builds non-automated, interactive tests in ${WRKBUILD}/bin
REGRESS_TARGET=		tests
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
