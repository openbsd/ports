# $OpenBSD: Makefile,v 1.14 2007/01/04 20:19:54 steven Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.6
PKGNAME=	${DISTNAME}p5
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=http://members.dslextreme.com/users/billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://members.dslextreme.com/users/billw/gkrellmss/

BUILD_DEPENDS+=	::math/fftw
LIB_DEPENDS+=	esd::audio/esound

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so
CONFIGURE_STYLE=	gnu
WRKCONF=${WRKSRC}/src

EXTRA_WANTLIB=	audiofile

.include <bsd.port.mk>
