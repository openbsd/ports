# $OpenBSD: Makefile,v 1.12 2016/03/05 16:04:09 pascal Exp $

COMMENT=	terminal emulator for GNUstep

REVISION =	6
DISTNAME=	Terminal-0.9.8
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	converters/libiconv x11/gnustep
WANTLIB +=	util ${MODLIBICONV_WANTLIB}

.include <bsd.port.mk>
