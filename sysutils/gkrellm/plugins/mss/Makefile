# $OpenBSD: Makefile,v 1.1.1.1 2003/11/03 20:34:17 sturm Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.3
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://web.wt.net/~billw/gkrellmss/gkrellmss.html

MASTER_SITES=	http://web.wt.net/~billw/gkrellmss/

LIB_DEPENDS+=	esd::audio/esound \
		fftw,rfftw::math/fftw

PLUGIN=		${WRKSRC}/src/gkrellmss.so

.include <bsd.port.mk>
