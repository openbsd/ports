# $OpenBSD: Makefile,v 1.3 2007/10/08 08:22:39 steven Exp $

COMMENT=	common low-level libraries for logilab projects

DISTNAME=	logilab-common-0.21.2
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.logilab.fr/pub/common/

MODULES=	lang/python
RUN_DEPENDS=	:py-mxDateTime-*:devel/py-mxDateTime
REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runtests.py

.include <bsd.port.mk>
