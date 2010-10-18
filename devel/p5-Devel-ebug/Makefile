# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:59 espie Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
DISTNAME =	Devel-ebug-0.49
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild
USE_GROFF =	Yes

RUN_DEPENDS=	::devel/p5-PadWalker \
		::devel/p5-YAML-Syck \
		::textproc/p5-String-Koremutake \
		::devel/p5-Test-Expect \
		::devel/p5-Proc-Background \
		::devel/p5-Devel-StackTrace

BUILD_DEPENDS =	${RUN_DEPENDS}

REGRESS_DEPENDS =	::devel/p5-YAML \
			::devel/p5-Test-Pod

.include <bsd.port.mk>
