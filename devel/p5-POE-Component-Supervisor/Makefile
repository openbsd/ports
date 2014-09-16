# $OpenBSD: Makefile,v 1.8 2014/09/16 06:52:47 jasper Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.08

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-POE-API-Peek \
			devel/p5-MooseX-POE \
			devel/p5-MooseX-LogDispatch \
			devel/p5-Set-Object \
			devel/p5-Hash-Util-FieldHash-Compat
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Log-Dispatch-Config-TestLog

.include <bsd.port.mk>
