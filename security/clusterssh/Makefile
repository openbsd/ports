# $OpenBSD: Makefile,v 1.14 2015/07/25 08:00:05 steven Exp $

COMMENT=	secure concurrent multi-server terminal control

DISTNAME=	App-ClusterSSH-4.03_06
PKGNAME=	clusterssh-4.03.06

CATEGORIES=	security

HOMEPAGE=	https://github.com/duncs/clusterssh/wiki

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clusterssh/}2.%20ClusterSSH%20Series%204/

MODULES=	cpan
CONFIGURE_STYLE = modbuild
RUN_DEPENDS=	x11/p5-Tk \
		x11/p5-X11-Protocol \
		devel/p5-Try-Tiny \
		devel/p5-Exception-Class \
		devel/p5-Readonly \
		sysutils/p5-File-Which
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=devel/p5-Test-Trap \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-DistManifest \
		devel/p5-Test-Differences \
		devel/p5-File-Slurp

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
