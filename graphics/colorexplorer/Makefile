# $OpenBSD: Makefile,v 1.6 2013/03/11 11:10:51 espie Exp $

COMMENT =	tool for exploring the color space and relations

DISTNAME =	ColorExplorer-1.8
REVISION =	1
CATEGORIES =	graphics
HOMEPAGE =	http://billposer.org/Software/ColorExplorer.html
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://billposer.org/Software/Downloads/
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		graphics/xoris

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/ColorExplorer.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ColorExplorer.tcl ${PREFIX}/bin/ColorExplorer

.include <bsd.port.mk>
