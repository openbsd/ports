# $OpenBSD: Makefile,v 1.8 2016/11/04 15:53:59 rpe Exp $

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
NO_TEST=		Yes

FONT_DISTSUBDIR=	fonts
WRKDIST=		${WRKDIR}/ttf-arabeyes-$V

.include <bsd.port.mk>
