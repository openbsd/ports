# $OpenBSD: Makefile,v 1.4 2005/01/20 20:19:40 sturm Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://web.wt.net/~billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://web.wt.net/~billw/gkrellmss/

LIB_DEPENDS+=	esd::audio/esound \
		fftw,rfftw::math/fftw

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so

EXTRA_WANTLIB=	audiofile

.include <bsd.port.mk>
