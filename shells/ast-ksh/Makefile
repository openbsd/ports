# $OpenBSD: Makefile,v 1.14 2002/10/28 19:00:09 naddy Exp $

COMMENT=	"official AT&T release of KornShell 93"

PKGNAME=	ast-ksh-${VERSION:S/-//g}
VERSION=	2002-09-22
CATEGORIES=	shells
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

MAKE_ENV=	CC="${CC}" CCFLAGS="${CFLAGS}" SHELL="/bin/sh"
.if ${FLAVOR:L} == "static"
MAKE_ENV+=	LDFLAGS=-static
.endif

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKBUILD} && env -i ${MAKE_ENV} /bin/sh bin/package make

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arch/openbsd.${MACHINE_ARCH}/bin/ksh \
		${PREFIX}/bin/ksh93
	${INSTALL_MAN} ${WRKBUILD}/arch/openbsd.${MACHINE_ARCH}/man/man1/sh.1 \
		${PREFIX}/man/man1/ksh93.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ast-ksh
.for fun in dirs popd
	${INSTALL_SCRIPT} ${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/fun/${fun} \
		${PREFIX}/share/examples/ast-ksh/
.endfor

.include <bsd.port.mk>
