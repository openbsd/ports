# $OpenBSD: Makefile,v 1.6 2011/09/16 09:24:57 espie Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.5.0
CATEGORIES =	devel
REVISION=		0

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
	@cd ${WRKSRC} && gmake test RUBY=${RUBY}

.include <bsd.port.mk>
