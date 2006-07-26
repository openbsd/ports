# $OpenBSD: Makefile,v 1.2 2006/07/26 07:07:16 aanriot Exp $

COMMENT=	"Prelude Management Console"

DISTNAME=	prewikka-0.9.5
PKGNAME=	prelude-${DISTNAME}p0

# only postgresql support for now

MODULES=	lang/python

BUILD_DEPENDS=	:py-cheetah-*:devel/py-cheetah

RUN_DEPENDS=	:prelude-manager-*:security/prelude/manager

NO_REGRESS=Yes

pre-build:
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},"		\
		${WRKSRC}/prewikka/siteconfig.py
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR},"	\
		${WRKSRC}/prewikka/siteconfig.py


.include <bsd.port.mk>
