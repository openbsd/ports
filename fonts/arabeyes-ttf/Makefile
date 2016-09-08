# $OpenBSD: Makefile,v 1.7 2016/09/08 17:32:57 jasper Exp $

COMMENT=	Arabeyes TrueType Arabic fonts

TYPEFACE =	arabeyes
V=		2.0
DISTNAME=	ttf-arabeyes_$V.orig
PKGNAME=	${TYPEFACE}-ttf-$V
REVISION=	2
CATEGORIES=	fonts x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/t/ttf-arabeyes/}
EXTRACT_SUFX=		.tar.gz
MODULES =		font

NO_BUILD=		Yes

FONT_DISTSUBDIR=	fonts
WRKDIST=		${WRKDIR}/ttf-arabeyes-$V

.include <bsd.port.mk>
