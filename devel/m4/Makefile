# $OpenBSD: Makefile,v 1.10 2000/02/15 17:18:41 espie Exp $
# $FreeBSD: Makefile,v 1.7 1997/06/16 08:22:35 max Exp $

DISTNAME=	m4-1.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= m4

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# This port does use gnu configure, but uses old autoconf files.
# We can't say USE_AUTOCONF because then we'd get a circular dependency:
# autoconf also requires this version of m4.  So we fake up what
# GNU_CONFIGURE would do less the parts that its outdated configure
# doesn't like.
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS= --prefix=${PREFIX} --program-prefix=g

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4
	@install-info ${PREFIX}/info/m4.info ${PREFIX}/info/dir

.include <bsd.port.mk>
