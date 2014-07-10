# $OpenBSD: Makefile,v 1.6 2014/07/10 11:06:37 rpe Exp $

PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

V=			3.6
GH_ACCOUNT=		sitaramc
GH_PROJECT=		gitolite
GH_TAGNAME=		v$V
GH_COMMIT=		522cc1fc1af530ef9c82e01d89f11022adf4b355
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		sysutils devel

HOMEPAGE=		https://github.com/sitaramc/gitolite/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/git

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		GH_VER
GL_DIR=			${PREFIX}/libexec/gitolite/

do-install:
	${SUBST_CMD} ${WRKSRC}/install
	${INSTALL_DATA_DIR} ${GL_DIR}
	perl ${WRKSRC}/install -to ${GL_DIR}
	cd ${PREFIX}/bin/ && ln -s ../libexec/gitolite/gitolite

.include <bsd.port.mk>
