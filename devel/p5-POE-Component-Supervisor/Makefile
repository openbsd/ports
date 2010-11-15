# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:05 espie Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.05

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-POE-API-Peek \
			devel/p5-MooseX-POE \
			devel/p5-MooseX-LogDispatch \
			devel/p5-Log-Dispatch-Config-TestLog \
			devel/p5-Set-Object \
			devel/p5-Hash-Util-FieldHash-Compat
REGRESS_DEPENDS=	devel/p5-Test-use-ok

.include <bsd.port.mk>
