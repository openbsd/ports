# $OpenBSD: Makefile,v 1.2 2007/11/01 03:29:53 jakemsr Exp $

COMMENT=		portable cross-platform audio API
DISTNAME=		portaudio-svn-1286
PKGNAME=		${DISTNAME}p0

SHARED_LIBS=		portaudio	0.0

CATEGORIES=		audio
HOMEPAGE=		http://www.portaudio.com/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m

MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-alsa \
			--without-jack

# builds non-automated, interactive tests in ${WRKBUILD}/bin
REGRESS_TARGET=		tests
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
