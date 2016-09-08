# $OpenBSD: Makefile,v 1.5 2016/09/08 17:32:58 jasper Exp $

COMMENT=	ISIRI 6219 conforming Farsi fonts

TYPEFACE=	farsifonts
V=		0.4
DISTNAME=	farsi_fonts_$V
PKGNAME=	${TYPEFACE}-ttf-$V
REVISION=	2
CATEGORIES=	fonts x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=arabeyes/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		font

NO_BUILD=		Yes

WRKDIST=		${WRKDIR}/farsifonts-$V

.include <bsd.port.mk>
