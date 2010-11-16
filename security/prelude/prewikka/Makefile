# $OpenBSD: Makefile,v 1.20 2010/11/16 10:11:51 jasper Exp $

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

pre-install:
	@${INSTALL_DATA} ${FILESDIR}/siteconfig.py		\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},"			\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR},"		\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e "s,%%VERSION%%,${DISTNAME:S/prewikka-//},"	\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e 's#${WRKINST}##' ${WRKSRC}/prewikka/siteconfig.py

.include <bsd.port.mk>
