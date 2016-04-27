# $OpenBSD: Makefile,v 1.4 2016/04/27 14:58:42 jasper Exp $

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
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/farsifonts-$V

.include <bsd.port.mk>
