# $OpenBSD: Makefile,v 1.12 2014/03/16 08:54:34 benoit Exp $

COMMENT=	secure concurrent multi-server terminal control

DISTNAME=	App-ClusterSSH-4.02_03
PKGNAME=	clusterssh-4.02.03

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

TEST_DEPENDS=devel/p5-Test-Trap \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-DistManifest \
		devel/p5-Test-Differences

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
