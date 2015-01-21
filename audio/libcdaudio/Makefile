# $OpenBSD: Makefile,v 1.22 2015/01/21 06:13:46 bentley Exp $

COMMENT=	multi-platform cd player development library
DISTNAME=	libcdaudio-0.99.12
REVISION=	1
SHARED_LIBS +=	cdaudio              1.1      # .1.0
CATEGORIES=	audio

HOMEPAGE=	http://libcdaudio.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=libcdaudio/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

.include <bsd.port.mk>
