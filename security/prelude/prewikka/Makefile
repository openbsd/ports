# $OpenBSD: Makefile,v 1.26 2011/09/22 11:42:01 landry Exp $

COMMENT=	Prelude Management Console

MODPY_EGG_VERSION=0.9.17
DISTNAME=	prewikka-0.9.17
PKGNAME=	prelude-${DISTNAME}
REVISION=	6

MODULES=	lang/python

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prewikka/

BUILD_DEPENDS=	devel/gettext>=0.17 \
		devel/py-cheetah

RUN_DEPENDS=	security/prelude/manager	\
		devel/py-cheetah

NO_REGRESS=	Yes
VERSION=	${DISTNAME:S/prewikka-//}
SUBST_VARS+=	VERSION

pre-install:
	${SUBST_CMD} -c ${FILESDIR}/siteconfig.py \
		${WRKSRC}/prewikka/siteconfig.py

.include <bsd.port.mk>
