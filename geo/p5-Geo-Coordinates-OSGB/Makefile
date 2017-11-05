# $OpenBSD: Makefile,v 1.2 2017/11/05 16:54:38 ajacoutot Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.19

CATEGORIES =	geo

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
MODCPAN_EXAMPLES = Yes

PKG_ARCH =	*

pre-install:
	chmod +x ${WRKSRC}/examples/*.pl

.include <bsd.port.mk>
