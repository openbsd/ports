# $OpenBSD: Makefile,v 1.1.1.1 2017/03/27 09:45:38 sthen Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.16

CATEGORIES =	geo

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
MODCPAN_EXAMPLES = Yes

PKG_ARCH =	*

pre-install:
	chmod +x ${WRKSRC}/examples/*.pl

.include <bsd.port.mk>
