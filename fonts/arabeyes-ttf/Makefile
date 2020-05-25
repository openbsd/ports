# $OpenBSD: Makefile,v 1.10 2020/05/25 05:44:06 bentley Exp $

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

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/t/ttf-arabeyes/}
EXTRACT_SUFX=		.tar.gz
MODULES =		font

NO_BUILD=		Yes
NO_TEST=		Yes

FONT_DISTSUBDIR=	fonts
WRKDIST=		${WRKDIR}/ttf-arabeyes-$V

.include <bsd.port.mk>
