COMMENT=	Arabeyes TrueType Arabic fonts

MODFONT_FAMILY =arabeyes
MODFONT_VERSION=2.0
DISTNAME=	ttf-arabeyes_${MODFONT_VERSION}.orig
PKGNAME=	${MODFONT_FAMILY}-ttf-${MODFONT_VERSION}
REVISION=	3
CATEGORIES=	fonts x11

HOMEPAGE=	https://arabeyes.org/Khotot

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			${SITE_DEBIAN:=main/t/ttf-arabeyes/}
EXTRACT_SUFX=		.tar.gz
MODULES =		font

NO_BUILD=		Yes
NO_TEST=		Yes

WRKSRC=			${WRKDIST}/fonts
WRKDIST=		${WRKDIR}/ttf-arabeyes-${MODFONT_VERSION}

.include <bsd.port.mk>
