# $OpenBSD: Makefile,v 1.7 2014/03/24 10:27:09 jasper Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.07
REVISION=		1

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
			devel/p5-Log-Dispatch-Config-TestLog \
			devel/p5-Set-Object \
			devel/p5-Hash-Util-FieldHash-Compat
TEST_DEPENDS=		devel/p5-Test-use-ok

pre-configure:
	rm ${WRKSRC}/lib/POE/Component/Supervisor/Handle/Proc.pm.orig

.include <bsd.port.mk>
