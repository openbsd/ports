# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:21 sthen Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.20
REVISION =	0

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
