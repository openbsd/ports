# $OpenBSD: Makefile,v 1.10 2013/08/11 21:21:17 landry Exp $

COMMENT=	user-friendly package browser and manager

DISTNAME=	pkg_mgr-0.2.1
REVISION=	2
CATEGORIES=	sysutils

HOMEPAGE=	http://rhaalovely.net/pkg_mgr.html
MAINTAINER=	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://rhaalovely.net/stuff/

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
