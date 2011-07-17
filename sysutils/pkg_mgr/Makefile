# $OpenBSD: Makefile,v 1.7 2011/07/17 19:47:13 jasper Exp $

COMMENT=	user-friendly package browser and manager

DISTNAME=	pkg_mgr-0.2.1
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	http://rhaalovely.net/pkg_mgr.html
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rhaalovely.net/stuff/

# for P5SITE
MODULES=	perl
NO_BUILD=	yes
NO_REGRESS=	yes

RUN_DEPENDS=	devel/p5-Curses-UI \
		databases/p5-DBD-SQLite \
		databases/sqlports,-compact

PKG_ARCH=	*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/OpenBSD/PackageManager/DBIModel.pm

.include <bsd.port.mk>
