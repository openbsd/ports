# $OpenBSD: Makefile,v 1.4 2001/10/24 11:58:57 espie Exp $

COMMENT=	"official AT&T release of KornShell 93"

PKGNAME=	ast-ksh-${VERSION:S/-//g}
VERSION=	2001-07-04.0000
CATEGORIES=	shells
NEED_VERSION=	1.419
HOMEPAGE=	http://www.kornshell.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	http://www.research.att.com/~gsf/download/tgz/
DISTFILES=	INIT.${VERSION}.tgz ast-ksh.${VERSION}.tgz

FLAVORS=	static
FLAVOR?=

MAKE_FLAGS=	CC='${CC}' CCFLAGS='${CFLAGS}'
.if ${FLAVOR:L} == "static"
MAKE_FLAGS+=	LDFLAGS=-static
BROKEN=		"does not build"
.endif

WRKDIST=	${WRKDIR}

.include <bsd.own.mk>

ACCEPT_AST_LICENSE?=	No
.if ${ACCEPT_AST_LICENSE:L} == "no"
IS_INTERACTIVE=	Yes
.else
post-patch:
	@touch ${WRKSRC}/lib/package/gen/ast.license.accepted
.endif

do-build:
	cd ${WRKBUILD} && SHELL=/bin/sh ./bin/package make ${MAKE_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arch/openbsd.${ARCH}/bin/ksh \
		${PREFIX}/bin/ksh93
	${INSTALL_MAN} ${WRKBUILD}/arch/openbsd.${ARCH}/man/man1/sh.1 \
		${PREFIX}/man/man1/ksh93.1

.include <bsd.port.mk>
