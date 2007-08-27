# $OpenBSD: Makefile,v 1.12 2007/08/27 17:52:23 aanriot Exp $

COMMENT=	"Prelude Management Console"

DISTNAME=	prewikka-0.9.12.1
PKGNAME=	prelude-${DISTNAME}

MODULES=	lang/python

BUILD_DEPENDS=	:py-cheetah-*:devel/py-cheetah

RUN_DEPENDS=	:prelude-manager-*:security/prelude/manager	\
		:py-cheetah-*:devel/py-cheetah

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prewikka/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prewikka/

NO_REGRESS=Yes

.include <bsd.port.mk>
