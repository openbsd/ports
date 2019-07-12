# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:58 sthen Exp $

COMMENT =	yet another free document preparation system

DISTNAME =	halibut-1.2
REVISION =	0
CATEGORIES =	textproc
HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/halibut/
MASTER_SITES =	${HOMEPAGE}${DISTNAME}/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

USE_GMAKE =	yes
MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${WRKINST}/${PREFIX}"
WANTLIB =	c

NO_TEST =	Yes

post-build:
	cd ${WRKSRC}/doc && ${MAKE_PROGRAM}

.include <bsd.port.mk>
