# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.28
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

REGRESS_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
