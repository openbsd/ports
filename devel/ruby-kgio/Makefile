# $OpenBSD: Makefile,v 1.3 2011/03/14 20:43:18 jeremy Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.3.2
CATEGORIES =	devel

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

REGRESS_DEPENDS =	devel/gmake

# One failing regress test
do-regress:
	@cd ${WRKSRC} && gmake test RUBY=${RUBY}

.include <bsd.port.mk>
