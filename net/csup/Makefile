# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:45 espie Exp $

COMMENT=	network distribution package for CVS repositories

# REL_20120305
PKGNAME=	csup-20120305
REV=		a72a17725ec3
CATEGORIES=	net
HOMEPAGE=	https://bitbucket.org/mux/csup

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://bitbucket.org/mux/csup/get/
DIST_SUBDIR=	csup
DISTFILES=	${REV}.tar.gz

WANTLIB=	c crypto pthread z

BUILD_DEPENDS=	devel/flex
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/mux-csup-${REV}

MAKE_ENV=	FLEX=gflex
ALL_TARGET=	csup

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/csup ${PREFIX}/bin/csup
	${INSTALL_MAN} ${WRKSRC}/csup.1 ${PREFIX}/man/man1/csup.1
	${INSTALL_SCRIPT} ${WRKSRC}/cpasswd.sh ${PREFIX}/bin/csuppasswd
	${INSTALL_MAN} ${WRKSRC}/cpasswd.1 ${PREFIX}/man/man1/csuppasswd.1

.include <bsd.port.mk>
