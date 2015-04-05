# $OpenBSD: Makefile,v 1.1.1.1 2015/04/05 20:33:48 landry Exp $

COMMENT =	yet another free document preparation system

DISTNAME =	halibut-1.1
CATEGORIES =	textproc
HOMEPAGE =	http://www.chiark.greenend.org.uk/~sgtatham/halibut/
MASTER_SITES =	${HOMEPAGE}

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE =	yes
MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${WRKINST}/${PREFIX}"
WANTLIB =	c

post-build:
	cd ${WRKSRC}/doc && ${MAKE_PROGRAM}

.include <bsd.port.mk>
