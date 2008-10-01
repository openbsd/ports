# $OpenBSD: Makefile,v 1.2 2008/10/01 12:24:04 sthen Exp $

COMMENT=	user-friendly package browser and manager

DISTNAME=	pkg_mgr-0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://gruiik.info/pkg_mgr.html
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gruiik.info/stuff/

# for P5SITE
MODULES=	perl
NO_BUILD=	yes
NO_REGRESS=	yes

RUN_DEPENDS=	::devel/p5-Curses-UI \
		::databases/p5-DBD-SQLite \
		::databases/sqlports

PKG_ARCH=	*

.include <bsd.port.mk>
