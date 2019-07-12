# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:52 sthen Exp $

COMMENT=	manages software package installations with symlinks

DISTNAME=	stow-2.2.2
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/stow/stow.html

MAINTAINER=	Andreas Kusalananda Kahari <andreas.kahari@abc.se>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=stow/}

CONFIGURE_STYLE=gnu
USE_GMAKE=Yes

TEST_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Output

.include <bsd.port.mk>
