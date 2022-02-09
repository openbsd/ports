# $OpenBSD: Makefile,v 1.13 2022/02/09 08:41:51 sthen Exp $

PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		3.2.0
DISTNAME=	Zonemaster-CLI-v$V
PKGNAME=	zonemaster-$V
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

CONFIGURE_STYLE= modinst

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-MooseX-Getopt \
		devel/p5-namespace-autoclean \
		net/p5-Zonemaster/engine>=2.0.0 \
		textproc/p5-Text-Reflow

.include <bsd.port.mk>
