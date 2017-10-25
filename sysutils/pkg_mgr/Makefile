# $OpenBSD: Makefile,v 1.13 2017/10/25 20:24:18 landry Exp $

COMMENT=	user-friendly package browser and manager

DISTNAME=	pkg_mgr-0.2.3
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	https://rhaalovely.net/pkg_mgr/
MAINTAINER=	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://rhaalovely.net/stuff/

# for P5SITE
MODULES=	perl
NO_BUILD=	yes
NO_TEST=	yes

RUN_DEPENDS=	devel/p5-Curses-UI \
		databases/p5-DBD-SQLite \
		databases/sqlports,-compact

PKG_ARCH=	*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/OpenBSD/PackageManager/DBIModel.pm

.include <bsd.port.mk>
