COMMENT=	Arabeyes TrueType Arabic fonts

TYPEFACE =	arabeyes
V=		2.0
DISTNAME=	ttf-arabeyes_$V.orig
PKGNAME=	${TYPEFACE}-ttf-$V
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
WRKDIST=		${WRKDIR}/ttf-arabeyes-$V

.include <bsd.port.mk>
