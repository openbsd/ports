# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 09:50:27 sthen Exp $

COMMENT=	fast and high quality sample-rate conversion (SoX Resampler)

DISTNAME=	soxr-0.1.1-Source
PKGNAME=	lib${DISTNAME:S/-Source//}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	soxr 1.2 soxr-lsr 3.4

CATEGORIES=	audio

HOMEPAGE=	http://sourceforge.net/p/soxr/wiki/Home/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=soxr/}

MODULES=	devel/cmake

.include <bsd.port.mk>
