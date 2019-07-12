# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:30 sthen Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.20

CATEGORIES =	geo

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	cpan
MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

PKG_ARCH =	*

pre-install:
	chmod +x ${WRKSRC}/examples/*.pl

.include <bsd.port.mk>
