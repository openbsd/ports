# $OpenBSD: Makefile,v 1.10 2015/05/07 11:27:59 jca Exp $

COMMENT=	manages software package installations with symlinks

DISTNAME=	stow-2.2.0
CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/stow/stow.html

MAINTAINER=	Andreas Kusalananda Kahari <andreas.kahari@icm.uu.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=stow/}

CONFIGURE_STYLE=gnu
USE_GMAKE=Yes

TEST_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
