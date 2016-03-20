# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:11 naddy Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	SQL-ReservedWords-0.8
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
