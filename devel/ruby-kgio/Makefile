# $OpenBSD: Makefile,v 1.7 2011/11/18 00:03:15 jeremy Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.6.0
CATEGORIES =	devel

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

REGRESS_DEPENDS =	devel/gmake

# Couple failing regress tests
do-regress:
	@cd ${WRKSRC} && gmake -k test RUBY=${RUBY}

.include <bsd.port.mk>
