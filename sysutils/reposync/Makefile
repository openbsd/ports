# $OpenBSD: Makefile,v 1.16 2019/12/04 14:40:37 sthen Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

DISTNAME=	reposync-0.15

CATEGORIES=	sysutils devel
PKG_ARCH=	*

# ISC
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=	https://spacehopper.org/mirrors/

NO_BUILD=	Yes

RUN_DEPENDS=	net/rsync
TEST_DEPENDS=	devel/shellcheck \
		shells/bash

do-configure:
	sed -i s,rundir=/var/db/reposync,rundir=${LOCALSTATEDIR}/db/reposync, \
	    ${WRKSRC}/reposync{,.1}

do-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} reposync ${PREFIX}/bin/reposync; \
	    ${INSTALL_MAN} reposync.1 ${PREFIX}/man/man1/reposync.1

do-test:
	ksh -n ${WRKSRC}/reposync
	bash -n ${WRKSRC}/reposync
	shellcheck --color ${WRKSRC}/reposync

.include <bsd.port.mk>
