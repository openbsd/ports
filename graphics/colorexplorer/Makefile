# $OpenBSD: Makefile,v 1.1.1.1 2008/05/11 11:55:34 simon Exp $

COMMENT =	tool for exploring the color space and relations

DISTNAME =	ColorExplorer-1.8
CATEGORIES =	graphics

HOMEPAGE =	http://billposer.org/Software/ColorExplorer.html
MASTER_SITES =	http://billposer.org/Software/Downloads/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	:tk-8.4.*:x11/tk/8.4 \
		::graphics/xoris

NO_BUILD =	Yes
PKG_ARCH =	*

.include <bsd.port.mk>
