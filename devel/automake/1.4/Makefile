# $OpenBSD: Makefile,v 1.15 2013/11/09 23:19:02 naddy Exp $

VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	automake-1.4.6
REVISION=	3
PKGSPEC=	automake->=${VERSION},<1.5

CONFIGURE_STYLE=gnu

TEST_DEPENDS=devel/gmake

pre-configure:
	${SUBST_CMD} ${WRKSRC}/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=${GMAKE} ${GMAKE} -f \
	    ${MAKE_FILE} ${ALL_TEST_FLAGS} ${TEST_TARGET}

.include <bsd.port.mk>
