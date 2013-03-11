# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:26 espie Exp $

COMMENT=		rule-based dispatching and generic functions

VERSION=		0.5
REV=			2306
DISTNAME=		RuleDispatch
PKGNAME=		py-ruledispatch-${VERSION}r${REV}
REVISION=		0
EPOCH=			0

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_BACKUP}
DISTFILES=		RuleDispatch-${VERSION}a0.dev-r${REV}${EXTRACT_SUFX}

MODULES=		lang/python
RUN_DEPENDS=		devel/py-protocols
TEST_DEPENDS=	devel/py-protocols

MODPY_SETUPTOOLS=	Yes

WANTLIB +=		${MODPY_WANTLIB}

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/RuleDispatch.egg-info

.include <bsd.port.mk>
