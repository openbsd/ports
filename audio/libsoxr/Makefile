# $OpenBSD: Makefile,v 1.3 2014/11/04 14:55:03 dcoppa Exp $

COMMENT=	fast and high quality sample-rate conversion (SoX Resampler)

DISTNAME=	soxr-0.1.1-Source
PKGNAME=	lib${DISTNAME:S/-Source//}
REVISION=	0
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	soxr 1.2 soxr-lsr 3.4

CATEGORIES=	audio

HOMEPAGE=	http://sourceforge.net/p/soxr/wiki/Home/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=soxr/}

MODULES=	devel/cmake

.include <bsd.port.mk>
