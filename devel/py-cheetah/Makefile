# $OpenBSD: Makefile,v 1.21 2011/09/16 09:24:55 espie Exp $

COMMENT=		Python-powered template engine and code generator

VERSION=		2.4.4
REVISION=		2
DISTNAME=		Cheetah-${VERSION}
PKGNAME=		py-cheetah-${VERSION}
CATEGORIES=		devel textproc

HOMEPAGE=		http://www.cheetahtemplate.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=C/Cheetah/}

MODULES=		lang/python
REGRESS_DEPENDS=	devel/py-cheetah
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1
MODPY_BADEGGS=		Cheetah

WANTLIB +=		${MODPY_WANTLIB}

SUBST_VARS=		VERSION

RUN_DEPENDS=		textproc/markdown

do-regress:
	mkdir /tmp/.cheetah
	cd /tmp/.cheetah && cheetah test
	rm -fr /tmp/.cheetah

.include <bsd.port.mk>
