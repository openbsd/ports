# $OpenBSD: Makefile,v 1.11 2019/11/17 19:51:12 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	rubber stamps collection for Tux Paint

DISTNAME=	tuxpaint-stamps-2018.09.01
PKGNAME=	tuxpaint-stamps-20180901

CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

NO_TEST=	Yes

RUN_DEPENDS=	games/tuxpaint

INSTALL_TARGET=	install-all

FAKE_FLAGS=	DATA_PREFIX=${WRKINST}${PREFIX}/share/tuxpaint/

.include <bsd.port.mk>
