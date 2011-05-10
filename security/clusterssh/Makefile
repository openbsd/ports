# $OpenBSD: Makefile,v 1.7 2011/05/10 09:56:06 kevlo Exp $

COMMENT=	secure concurrent multi-server terminal control

DISTNAME=	App-ClusterSSH-4.00_07
PKGNAME=	clusterssh-4.00.07

CATEGORIES=	security

HOMEPAGE=	http://clusterssh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clusterssh/}

MODULES=	cpan
RUN_DEPENDS=	x11/p5-Tk \
		x11/p5-X11-Protocol
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Trap

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
