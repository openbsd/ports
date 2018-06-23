# $OpenBSD: Makefile,v 1.3 2018/06/23 21:29:38 ajacoutot Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.20

CATEGORIES =	geo

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

PKG_ARCH =	*

pre-install:
	chmod +x ${WRKSRC}/examples/*.pl

.include <bsd.port.mk>
