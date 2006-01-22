# $OpenBSD: Makefile,v 1.11 2006/01/22 00:09:30 steven Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.6
PKGNAME=	${DISTNAME}p3
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=http://members.dslextreme.com/users/billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellmss/

BUILD_DEPENDS+=	rfftw::math/fftw
LIB_DEPENDS+=	esd::audio/esound

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so
CONFIGURE_STYLE=	gnu
WRKCONF=${WRKSRC}/src

EXTRA_WANTLIB=	audiofile

.include <bsd.port.mk>
