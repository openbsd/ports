# $OpenBSD: Makefile,v 1.10 2007/04/15 11:40:48 aanriot Exp $

COMMENT=	"Prelude Management Console"

DISTNAME=	prewikka-0.9.9
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
