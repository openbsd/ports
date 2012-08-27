# $OpenBSD: Makefile,v 1.13 2012/08/27 13:53:10 sthen Exp $

VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	automake-1.4.6
REVISION=	2
PKGSPEC=	automake->=${VERSION},<1.5

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=devel/gmake

pre-configure:
	${SUBST_CMD} ${WRKSRC}/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=${GMAKE} ${GMAKE} -f \
	    ${MAKE_FILE} ${ALL_REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
