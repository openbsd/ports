# $OpenBSD: Makefile,v 1.20 2003/08/01 22:29:59 naddy Exp $

COMMENT=	"official AT&T release of KornShell 93"

PKGNAME=	ast-ksh-${VERSION:S/-//g}
VERSION=	2003-07-24
CATEGORIES=	shells
HOMEPAGE=	http://www.kornshell.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"inscrutable license"
PERMIT_PACKAGE_FTP=	"inscrutable license"
PERMIT_DISTFILES_CDROM=	"inscrutable license"
PERMIT_DISTFILES_FTP=	"inscrutable license"

MASTER_SITES=	http://www.research.att.com/~gsf/download/tgz/
DISTFILES=	INIT.${VERSION}.tgz ast-ksh.${VERSION}.tgz

FLAVORS=	static
FLAVOR?=

MAKE_ENV=	CC="${CC}" CCFLAGS="${CFLAGS}" SHELL="/bin/sh"
.if ${FLAVOR:L:Mstatic}
MAKE_ENV+=	LDFLAGS=-static
.endif

WRKDIST=	${WRKDIR}
INSTALLROOT=	${WRKBUILD}/arch/openbsd.${MACHINE_ARCH}

do-build:
	cd ${WRKBUILD} && env -i ${MAKE_ENV} /bin/sh bin/package make

do-regress:
	cd ${WRKSRC}/src/cmd/ksh93/tests && \
		SHELL=${INSTALLROOT}/bin/ksh ${INSTALLROOT}/bin/ksh shtests

do-install:
	${INSTALL_PROGRAM} ${INSTALLROOT}/bin/ksh ${PREFIX}/bin/ksh93
	${INSTALL_MAN} ${INSTALLROOT}/man/man1/sh.1 ${PREFIX}/man/man1/ksh93.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ast-ksh
.for fun in dirs popd
	${INSTALL_SCRIPT} ${INSTALLROOT}/fun/${fun} \
		${PREFIX}/share/examples/ast-ksh/
.endfor

.include <bsd.port.mk>
