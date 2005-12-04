# $OpenBSD: Makefile,v 1.1.1.1 2005/12/04 17:36:51 alek Exp $

COMMENT=	"application for managing passwords"

DISTNAME=	kedpm-0.4.0
CATEGORIES=	security

HOMEPAGE=	http://kedpm.sourceforge.net/ 

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kedpm/}

RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS} \
		:py-gtk2-*:x11/py-gtk2 \
		:py-crypto-*:security/py-crypto
REGRESS_DEPENDS=${RUN_DEPENDS}

MODULES=	lang/python

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./run_tests

.include <bsd.port.mk>
