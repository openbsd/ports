# $OpenBSD: Makefile,v 1.10 2013/03/11 11:37:54 espie Exp $

COMMENT-main= 	object oriented type setting language
COMMENT-doc=	Lout user and expert documentation

DISTNAME=       lout-3.39
PKGNAME-main=	${DISTNAME}
PKGNAME-doc=    ${DISTNAME:S/-/-doc-/}
CATEGORIES=	print

REVISION-main=	0

HOMEPAGE=	http://savannah.nongnu.org/projects/lout/
MASTER_SITES=   ${MASTER_SITE_SAVANNAH:=lout/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	prg2lout lout
INSTALL_TARGET=	install installman installdoc
USE_GROFF =	Yes
NO_TEST=	Yes

WANTLIB=	c m z

MULTI_PACKAGES=	-doc -main

PKG_ARCH-doc=	*
WANTLIB-doc=

.include <bsd.port.mk>
