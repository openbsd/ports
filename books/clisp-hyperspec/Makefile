# $OpenBSD: Makefile,v 1.3 2013/03/10 23:04:44 espie Exp $

COMMENT=		Common Lisp reference

DISTNAME=		HyperSpec-7-0
PKGNAME=		clisp-hyperspec-7.0
CATEGORIES=		books lang

PERMIT_PACKAGE_CDROM=	Commercial redistribution prohibited
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		ftp://ftp.lispworks.com/pub/software_tools/reference/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

DOC=			${PREFIX}/share/doc/clisp-hyperspec
WRKSRC= 		${WRKDIR}/HyperSpec

do-install:
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKSRC} && umask 022 && pax -rw . ${DOC}

.include <bsd.port.mk>
