# $OpenBSD: Makefile,v 1.8 2002/03/26 17:34:36 naddy Exp $

COMMENT=	"official AT&T release of KornShell 93"

PKGNAME=	ast-ksh-${VERSION:S/-//g}
VERSION=	2002-03-17
CATEGORIES=	shells
NEED_VERSION=	1.515
HOMEPAGE=	http://www.kornshell.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	http://www.research.att.com/~gsf/download/tgz/
DISTFILES=	INIT.${VERSION}.tgz ast-ksh.${VERSION}.tgz

FLAVORS=	static
FLAVOR?=

MAKE_FLAGS=	CC='${CC}' CCFLAGS='${CFLAGS}'
.if ${FLAVOR:L} == "static"
MAKE_FLAGS+=	LDFLAGS=-static
.endif

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKBUILD} && SHELL=/bin/sh ./bin/package make ${MAKE_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arch/openbsd.${MACHINE_ARCH}/bin/ksh \
		${PREFIX}/bin/ksh93
	${INSTALL_MAN} ${WRKBUILD}/arch/openbsd.${MACHINE_ARCH}/man/man1/sh.1 \
		${PREFIX}/man/man1/ksh93.1

.include <bsd.port.mk>
