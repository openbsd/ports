PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

GH_ACCOUNT=		sitaramc
GH_PROJECT=		gitolite
GH_TAGNAME=		v3.6.11
CATEGORIES=		sysutils devel

HOMEPAGE=		https://gitolite.com/gitolite/

# GPLv2
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/git

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		GH_TAGNAME
GL_DIR=			${PREFIX}/libexec/gitolite/

do-install:
	${SUBST_CMD} ${WRKSRC}/install
	${INSTALL_DATA_DIR} ${GL_DIR}
	perl ${WRKSRC}/install -to ${GL_DIR}
	cd ${PREFIX}/bin/ && ln -s ../libexec/gitolite/gitolite

.include <bsd.port.mk>
