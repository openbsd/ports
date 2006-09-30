# $OpenBSD: Makefile,v 1.6 2006/09/30 15:12:00 djm Exp $

COMMENT=	"Python-powered template engine and code generator"

DISTNAME=	Cheetah-2.0rc7
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.cheetahtemplate.org/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cheetahtemplate/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

NO_REGRESS=	Yes

.include <bsd.port.mk>
