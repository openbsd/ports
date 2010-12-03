# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
DISTNAME=		DateTime-Locale-0.45
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
REGRESS_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
