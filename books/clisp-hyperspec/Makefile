# $OpenBSD: Makefile,v 1.1.1.1 2007/11/25 22:11:45 jasper Exp $

COMMENT=		Common Lisp reference

DISTNAME=		HyperSpec-7-0
PKGNAME=		clisp-hyperspec-7.0
CATEGORIES=		books lang

PERMIT_PACKAGE_CDROM=	Commercial redistribution prohibited
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Commercial redistribution prohibited
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.lispworks.com/pub/software_tools/reference/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

DOC=			${PREFIX}/share/doc/clisp-hyperspec

do-install:
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKDIR} && umask 022 && pax -rw . ${DOC}

.include <bsd.port.mk>
