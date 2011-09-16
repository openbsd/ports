# $OpenBSD: Makefile,v 1.9 2011/09/16 09:24:55 espie Exp $

COMMENT=		Python Abstract Syntax Tree New Generation

DISTNAME=		logilab-astng-0.22.0
PKGNAME=		py-${DISTNAME}
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/astng/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.logilab.fr/pub/astng/

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-common
REGRESS_DEPENDS=	${RUN_DEPENDS}

do-regress: install
	@cd ${WRKSRC}/test && ${MODPY_BIN} /usr/local/bin/pytest

.include <bsd.port.mk>
