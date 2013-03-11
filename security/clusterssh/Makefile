# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:24 espie Exp $

COMMENT=	secure concurrent multi-server terminal control

DISTNAME=	App-ClusterSSH-4.01_01
PKGNAME=	clusterssh-4.01.01

CATEGORIES=	security

HOMEPAGE=	http://clusterssh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clusterssh/}

MODULES=	cpan
RUN_DEPENDS=	x11/p5-Tk \
		x11/p5-X11-Protocol \
		devel/p5-Try-Tiny \
		devel/p5-Exception-Class \
		devel/p5-Readonly \
		sysutils/p5-File-Which
BUILD_DEPENDS=	${RUN_DEPENDS}

# one test fails due to hard coded xterm path
TEST_DEPENDS=devel/p5-Test-Trap \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-DistManifest

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
