# $OpenBSD: Makefile,v 1.13 2019/11/03 14:07:42 jasper Exp $

COMMENT=		Erlang inspired babysitting

DISTNAME=		POE-Component-Supervisor-0.09
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

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
