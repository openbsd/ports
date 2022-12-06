VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	automake-1.4.6
REVISION=	5
PKGSPEC=	automake->=${VERSION},<1.5

TEST_DEPENDS=	devel/gmake

pre-configure:
	${SUBST_CMD} ${WRKSRC}/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
