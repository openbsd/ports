# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:07 espie Exp $

COMMENT=		Python Abstract Syntax Tree New Generation

DISTNAME=		logilab-astng-0.17.0
PKGNAME=		py-${DISTNAME}
REVISION =		2
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/astng/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.logilab.fr/pub/astng/

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-common
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			devel/pylint

do-regress: install
	cd ${WRKSRC}/test && ${MODPY_BIN} ./regrtest.py

.include <bsd.port.mk>
