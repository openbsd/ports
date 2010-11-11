# $OpenBSD: Makefile,v 1.25 2010/11/11 19:00:48 espie Exp $

COMMENT=	soundscope for GkrellM2 using ESD

DISTNAME=	gkrellmss-2.6
REVISION=	14
CATEGORIES=	audio

HOMEPAGE=http://members.dslextreme.com/users/billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellmss/

BUILD_DEPENDS+=	::math/fftw
LIB_DEPENDS+=	::audio/esound

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so
CONFIGURE_STYLE=	gnu
WRKCONF=${WRKSRC}/src

EXTRA_WANTLIB=	audiofile sndio esd

.include <bsd.port.mk>
