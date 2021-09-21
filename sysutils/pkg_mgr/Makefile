# $OpenBSD: Makefile,v 1.17 2021/09/21 06:57:58 solene Exp $

BROKEN=		pkg tools API changed and pkg_mgr needs to be updated
COMMENT=	user-friendly package browser and manager

DISTNAME=	pkg_mgr-0.2.3
CATEGORIES=	sysutils
REVISION=	2

HOMEPAGE=	https://rhaalovely.net/pkg_mgr/
MAINTAINER=	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://rhaalovely.net/stuff/

# for P5SITE
MODULES=	perl
NO_BUILD=	yes
NO_TEST=	yes

RUN_DEPENDS=	devel/p5-Curses-UI \
		databases/p5-DBD-SQLite \
		databases/sqlports>=7.0

PKG_ARCH=	*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/OpenBSD/PackageManager/DBIModel.pm

.include <bsd.port.mk>
