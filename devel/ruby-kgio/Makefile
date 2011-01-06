# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	kinder, gentler I/O for Ruby

DISTNAME =	kgio-2.0.0
REVISION =	0
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
