# $OpenBSD: Makefile,v 1.17 2000/03/06 03:56:07 espie Exp $

DISTNAME=	autoconf-2.13
CATEGORIES=	devel
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Both are needed for now as bsd.port.mk does not cause RUN_DEPENDS to
# be created before running configure, which causes the build to do the
# wrong thing.  The RUN_DEPENDS is needed for packages.
BUILD_DEPENDS=	gm4:devel/m4
RUN_DEPENDS=	gm4:devel/m4

FAKE= Yes
SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'


.include <bsd.port.mk>
