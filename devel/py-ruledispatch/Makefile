# $OpenBSD: Makefile,v 1.27 2019/05/15 12:04:37 kmos Exp $

COMMENT=		rule-based dispatching and generic functions

MODPY_EGG_VERSION =	RuleDispatch-0.5a0.dev0
DISTNAME=		RuleDispatch-0.5a0.dev-r2306
PKGNAME=		py-ruledispatch-0.5r2306
REVISION=		5
EPOCH=			0

WRKDIST =		${WRKDIR}/RuleDispatch

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
RUN_DEPENDS=		devel/py-protocols

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/RuleDispatch.egg-info

.include <bsd.port.mk>
