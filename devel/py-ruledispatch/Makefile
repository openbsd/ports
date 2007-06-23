# $OpenBSD: Makefile,v 1.1.1.1 2007/06/23 21:43:16 martynas Exp $

COMMENT=		"rule-based dispatching and generic functions"

VERSION=		0.5
REVISION=		2306
DISTNAME=		RuleDispatch
PKGNAME=		py-ruledispatch-${VERSION}r${REVISION}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://peak.telecommunity.com/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=distributions/gentoo/distfiles/}
DISTFILES=		RuleDispatch-${VERSION}a0.dev-r${REVISION}${EXTRACT_SUFX}

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-protocols
REGRESS_DEPENDS=	::devel/py-protocols

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/RuleDispatch.egg-info

.include <bsd.port.mk>
