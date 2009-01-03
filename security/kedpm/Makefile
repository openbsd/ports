# $OpenBSD: Makefile,v 1.5 2009/01/03 21:27:25 kili Exp $

COMMENT=	application for managing passwords

MODPY_EGG_VERSION=	0.4.0
DISTNAME=	kedpm-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security

HOMEPAGE=	http://kedpm.sourceforge.net/

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kedpm/}

RUN_DEPENDS=	:py-gtk2-*:x11/py-gtk2 \
		:py-crypto-*:security/py-crypto
REGRESS_DEPENDS=${RUN_DEPENDS}

MODULES=	lang/python

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./run_tests

.include <bsd.port.mk>
