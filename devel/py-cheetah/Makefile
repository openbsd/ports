# $OpenBSD: Makefile,v 1.10 2007/10/08 08:22:39 steven Exp $

COMMENT=		Python-powered template engine and code generator

V=			2.0rc8
DISTNAME=		Cheetah-${V}
PKGNAME=		py-cheetah-${V}p0
CATEGORIES=		devel textproc lang/python

HOMEPAGE=		http://www.cheetahtemplate.org/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cheetahtemplate/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

NO_REGRESS=		Yes

SUBST_VARS=		V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cheetah
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cheetah/

.include <bsd.port.mk>
