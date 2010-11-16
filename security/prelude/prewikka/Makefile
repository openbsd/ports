# $OpenBSD: Makefile,v 1.21 2010/11/16 10:17:56 jasper Exp $

COMMENT=	Prelude Management Console

MODPY_EGG_VERSION=0.9.17
DISTNAME=	prewikka-0.9.17
PKGNAME=	prelude-${DISTNAME}
REVISION=	2

MODULES=	lang/python

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prewikka/

BUILD_DEPENDS=	:gettext->=0.17:devel/gettext \
		:py-cheetah-*:devel/py-cheetah

RUN_DEPENDS=	:prelude-manager-*:security/prelude/manager	\
		:py-cheetah-*:devel/py-cheetah

NO_REGRESS=	Yes
VERSION=	${DISTNAME:S/prewikka-//}
SUBST_VARS+=	VERSION

pre-install:
	${SUBST_CMD} -c ${FILESDIR}/siteconfig.py \
		${WRKSRC}/prewikka/siteconfig.py

.include <bsd.port.mk>
