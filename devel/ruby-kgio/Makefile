# $OpenBSD: Makefile,v 1.21 2017/12/18 03:07:47 jeremy Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.11.1
CATEGORIES =	devel

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =	devel/gmake

# Couple failing regress tests
do-test:
	@cd ${WRKSRC} && gmake -k test RUBY=${RUBY}

.include <bsd.port.mk>
