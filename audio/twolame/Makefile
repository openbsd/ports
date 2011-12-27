# $OpenBSD: Makefile,v 1.1.1.1 2011/12/27 09:44:15 jasper Exp $

COMMENT=	optimised MPEG Audio Layer 2 (MP2) encoder

DISTNAME=	twolame-0.3.13
SHARED_LIBS +=  twolame              0.0      # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://www.twolame.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=twolame/}

WANTLIB=	c m sndfile

LIB_DEPENDS=	audio/libsndfile

CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
