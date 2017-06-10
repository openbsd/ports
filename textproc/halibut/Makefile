# $OpenBSD: Makefile,v 1.2 2017/06/10 07:17:27 landry Exp $

COMMENT =	yet another free document preparation system

DISTNAME =	halibut-1.2
CATEGORIES =	textproc
HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/halibut/
MASTER_SITES =	${HOMEPAGE}${DISTNAME}/
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE =	yes
MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${WRKINST}/${PREFIX}"
WANTLIB =	c

NO_TEST =	Yes

post-build:
	cd ${WRKSRC}/doc && ${MAKE_PROGRAM}

.include <bsd.port.mk>
