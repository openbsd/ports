# $OpenBSD: Makefile,v 1.6 2020/08/30 17:58:52 cwen Exp $

COMMENT =	convert Lat/Lon to/from GB Ordnance Survey grid reference

DISTNAME =	Geo-Coordinates-OSGB-2.20
REVISION =	1

CATEGORIES =	geo

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	cpan
MODCPAN_EXAMPLES = Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install
RUN_DEPENDS =	devel/p5-File-Share>=0.25

PKG_ARCH =	*

pre-install:
	chmod +x ${WRKSRC}/examples/*.pl

.include <bsd.port.mk>
