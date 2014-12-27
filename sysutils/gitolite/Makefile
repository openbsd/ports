# $OpenBSD: Makefile,v 1.7 2014/12/27 15:33:54 jasper Exp $

PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

V=			3.6.2
GH_ACCOUNT=		sitaramc
GH_PROJECT=		gitolite
GH_TAGNAME=		v$V
GH_COMMIT=		b5649570420bc112f7c8dcaf1d3c0275de93b464
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
