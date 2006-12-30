# $OpenBSD: Makefile,v 1.9 2006/12/30 16:36:09 aanriot Exp $

COMMENT=	"Prelude Management Console"

DISTNAME=	prewikka-0.9.8
PKGNAME=	prelude-${DISTNAME}

MODULES=	lang/python

BUILD_DEPENDS=	:py-cheetah-*:devel/py-cheetah

RUN_DEPENDS=	:prelude-manager-*:security/prelude/manager \
		:py-cheetah-*:devel/py-cheetah

pre-install:
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},"		\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR},"	\
		${WRKSRC}/prewikka/siteconfig.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prewikka/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prewikka/

NO_REGRESS=Yes

.include <bsd.port.mk>
