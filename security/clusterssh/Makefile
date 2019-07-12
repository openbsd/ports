# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:01 sthen Exp $

COMMENT=	secure concurrent multi-server terminal control

V=		4.13.2
DISTNAME=	App-ClusterSSH-v$V
PKGNAME=	clusterssh-${V:S/_/./}

CATEGORIES=	security

HOMEPAGE=	https://github.com/duncs/clusterssh/wiki

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clusterssh/}2.%20ClusterSSH%20Series%204/

MODULES=	cpan
PKG_ARCH=	*
CONFIGURE_STYLE = modbuild
RUN_DEPENDS=	x11/p5-Tk \
		x11/p5-X11-Protocol \
		x11/p5-X11-Protocol-Other \
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion
	mv ${PREFIX}/bin/clusterssh_bash_completion.dist ${PREFIX}/share/bash-completion/clusterssh

.include <bsd.port.mk>
