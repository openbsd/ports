# $OpenBSD: Makefile,v 1.2 2004/05/18 14:49:56 naddy Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.5
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://web.wt.net/~billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://web.wt.net/~billw/gkrellmss/

LIB_DEPENDS+=	esd::audio/esound \
		fftw,rfftw::math/fftw

CFLAGS+=	-DHAVE_FFTW2

PLUGIN=		${WRKSRC}/src/gkrellmss.so

.include <bsd.port.mk>
