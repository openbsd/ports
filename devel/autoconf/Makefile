# $OpenBSD: Makefile,v 1.12 1999/11/21 23:36:16 espie Exp $

DISTNAME=	autoconf-2.13
PKGNAME=gnuauto-2.13
PREFIX=/usr/local/auto
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

MAINTAINER=	espie@cvs.openbsd.org

# Both are needed for now as bsd.port.mk does not cause RUN_DEPENDS to
# be created before running configure, which causes the build to do the
# wrong thing.  The RUN_DEPENDS is needed for packages.
BUILD_DEPENDS=	gm4:${PORTSDIR}/devel/m4
RUN_DEPENDS=	gm4:${PORTSDIR}/devel/m4

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes

post-install:
	@install-info ${PREFIX}/info/autoconf.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/standards.info ${PREFIX}/info/dir

.include <bsd.port.mk>
