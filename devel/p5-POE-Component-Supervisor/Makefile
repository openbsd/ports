# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:31 naddy Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.09

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-POE-API-Peek \
			devel/p5-MooseX-POE \
			devel/p5-MooseX-LogDispatch \
			devel/p5-Set-Object \
			devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Log-Dispatch-Config-TestLog

.include <bsd.port.mk>
