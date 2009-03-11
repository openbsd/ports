# $OpenBSD: Makefile,v 1.13 2009/03/11 21:08:53 bernd Exp $

COMMENT=		Python-powered template engine and code generator

VERSION=		2.0.1
DISTNAME=		Cheetah-${VERSION}
PKGNAME=		py-cheetah-${VERSION}p0
CATEGORIES=		devel textproc

HOMEPAGE=		http://www.cheetahtemplate.org/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cheetahtemplate/}

MODULES=		lang/python
REGRESS_DEPENDS=	::devel/py-cheetah
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

SUBST_VARS=		VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cheetah
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cheetah/

do-regress:
	mkdir /tmp/.cheetah
	cd /tmp/.cheetah && cheetah test
	rm -fr /tmp/.cheetah

.include <bsd.port.mk>
