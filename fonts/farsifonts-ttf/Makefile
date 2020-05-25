# $OpenBSD: Makefile,v 1.8 2020/05/25 06:48:21 bentley Exp $

COMMENT=	ISIRI 6219 conforming Farsi fonts

TYPEFACE=	farsifonts
V=		0.4
DISTNAME=	farsi_fonts_$V
PKGNAME=	${TYPEFACE}-ttf-$V
REVISION =	3
CATEGORIES=	fonts x11

HOMEPAGE =	https://www.arabeyes.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=arabeyes/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		font

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/farsifonts-$V

.include <bsd.port.mk>
