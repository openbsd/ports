# $OpenBSD: Makefile,v 1.3 2007/10/08 08:22:43 steven Exp $

COMMENT=		tools for using web server gateway interface stack

V=			1.3
DISTNAME=		Paste-${V}
PKGNAME=		py-paste-${V}p0

CATEGORIES=		www lang/python

HOMEPAGE=		http://pythonpaste.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/P/Paste/

MODULES=		lang/python
RUN_DEPENDS=		::www/py-flup
REGRESS_DEPENDS=	::devel/py-py \
			::www/py-flup

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-paste/{} \;

do-regress:
	cd ${WRKSRC} && py.test .

.include <bsd.port.mk>
