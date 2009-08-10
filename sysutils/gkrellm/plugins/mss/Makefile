# $OpenBSD: Makefile,v 1.21 2009/08/10 06:34:30 kili Exp $

COMMENT=	soundscope for GkrellM2 using ESD

DISTNAME=	gkrellmss-2.6
PKGNAME=	${DISTNAME}p11
CATEGORIES=	audio

HOMEPAGE=http://members.dslextreme.com/users/billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellmss/

BUILD_DEPENDS+=	::math/fftw
LIB_DEPENDS+=	esd::audio/esound

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so
CONFIGURE_STYLE=	gnu
WRKCONF=${WRKSRC}/src

EXTRA_WANTLIB=	audiofile sndio

.include <bsd.port.mk>
