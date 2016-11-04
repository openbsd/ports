# $OpenBSD: Makefile,v 1.19 2016/11/04 21:26:38 jeremy Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.10.0
REVISION =	0
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
