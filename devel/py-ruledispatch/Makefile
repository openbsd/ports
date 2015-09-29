# $OpenBSD: Makefile,v 1.24 2015/09/29 10:52:11 sthen Exp $

COMMENT=		rule-based dispatching and generic functions

MODPY_EGG_VERSION =	RuleDispatch-0.5a0.dev_r0
DISTNAME=		RuleDispatch-0.5a0.dev-r2306
PKGNAME=		py-ruledispatch-0.5r2306
REVISION=		3
EPOCH=			0

WRKDIST =		${WRKDIR}/RuleDispatch

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
RUN_DEPENDS=		devel/py-protocols
TEST_DEPENDS=		${RUN_DEPENDS}

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/RuleDispatch.egg-info

.include <bsd.port.mk>
