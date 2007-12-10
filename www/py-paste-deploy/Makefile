# $OpenBSD: Makefile,v 1.4 2007/12/10 21:07:52 martynas Exp $

COMMENT=		load, configure, and compose WSGI applications and servers

V=			1.3
DISTNAME=		PasteDeploy-${V}
PKGNAME=		py-paste-deploy-${V}p0

CATEGORIES=		www

HOMEPAGE=		http://pythonpaste.org/deploy/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/P/PasteDeploy/

MODULES=		lang/python
RUN_DEPENDS=		::www/py-paste
REGRESS_DEPENDS=	::devel/py-py \
			::www/py-paste

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-deploy
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paste-deploy/

do-regress:
	cd ${WRKSRC} && py.test .

.include <bsd.port.mk>
