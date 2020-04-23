# $OpenBSD: Makefile,v 1.24 2020/04/23 13:49:31 sthen Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

#GH_ACCOUNT=	sthen
#GH_PROJECT=	reposync
#GH_TAGNAME=	20200423
DISTNAME=	reposync-20200423

HOMEPAGE=	https://github.com/sthen/reposync
MASTER_SITES=	https://spacehopper.org/mirrors/

CATEGORIES=	sysutils devel
PKG_ARCH=	*

# ISC
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

NO_BUILD=	Yes

RUN_DEPENDS=	net/rsync
TEST_DEPENDS=	devel/shellcheck \
		shells/bash

do-configure:
	sed -i s,rundir=/var/db/reposync,rundir=${LOCALSTATEDIR}/db/reposync, \
	    ${WRKSRC}/reposync{,.1}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/reposync/
	${INSTALL_SCRIPT} ${WRKSRC}/reposync ${PREFIX}/bin/reposync
	${INSTALL_MAN} ${WRKSRC}/reposync.1 ${PREFIX}/man/man1/reposync.1
	${INSTALL_DATA} ${WRKSRC}/ssh_known_hosts ${PREFIX}/share/reposync/

do-test:
	ksh -n ${WRKSRC}/reposync
	bash -n ${WRKSRC}/reposync
	shellcheck --color ${WRKSRC}/reposync

.include <bsd.port.mk>
