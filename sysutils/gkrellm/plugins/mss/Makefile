# $OpenBSD: Makefile,v 1.10 2005/11/17 17:09:50 naddy Exp $

COMMENT=	"Soundscope for GkrellM2 using ESD"

DISTNAME=	gkrellmss-2.6
PKGNAME=	${DISTNAME}p2
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
