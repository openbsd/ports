# $OpenBSD: Makefile,v 1.14 2000/02/12 08:02:12 turan Exp $

DISTNAME=	autoconf-2.13
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
