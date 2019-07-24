# $OpenBSD: Makefile,v 1.15 2019/07/24 10:30:33 sthen Exp $

COMMENT=	manages software package installations with symlinks

DISTNAME=	stow-2.3.0
CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/stow/stow.html

MAINTAINER=	Andreas Kusalananda Kahari <andreas.kahari@abc.se>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=stow/}

CONFIGURE_STYLE=gnu
USE_GMAKE=Yes

RUN_DEPENDS=	devel/p5-Clone \
		devel/p5-Clone-Choose \
		devel/p5-Hash-Merge

TEST_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Output

.include <bsd.port.mk>
