# $OpenBSD: Makefile,v 1.4 2019/07/14 00:39:35 naddy Exp $

COMMENT=		Common Lisp reference

DISTNAME=		HyperSpec-7-0
PKGNAME=		clisp-hyperspec-7.0
CATEGORIES=		books lang

PERMIT_PACKAGE=	Yes

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
