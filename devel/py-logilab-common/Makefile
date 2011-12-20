# $OpenBSD: Makefile,v 1.12 2011/12/20 11:26:24 sthen Exp $

COMMENT=	common low-level libraries for logilab projects

DISTNAME=	logilab-common-0.56.0
PKGNAME=	py-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.logilab.fr/pub/common/

MODULES=	lang/python

RUN_DEPENDS=	devel/py-mxDateTime
REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC}/test && \
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ../bin/pytest

.include <bsd.port.mk>
