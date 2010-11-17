# $OpenBSD: Makefile,v 1.3 2010/11/17 08:05:13 espie Exp $

COMMENT =	tool for exploring the color space and relations

DISTNAME =	ColorExplorer-1.8
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	http://billposer.org/Software/ColorExplorer.html
MASTER_SITES =	http://billposer.org/Software/Downloads/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		graphics/xoris

NO_BUILD =	Yes
PKG_ARCH =	*

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/ColorExplorer.tcl

.include <bsd.port.mk>
