# $OpenBSD: Makefile,v 1.8 2011/04/23 21:49:27 kili Exp $

COMMENT-main= 	object oriented type setting language
COMMENT-doc=	Lout user and expert documentation

DISTNAME=       lout-3.39
PKGNAME-main=	${DISTNAME}
PKGNAME-doc=    ${DISTNAME:S/-/-doc-/}
CATEGORIES=	print

HOMEPAGE=	http://savannah.nongnu.org/projects/lout/
MASTER_SITES=   ${MASTER_SITE_SAVANNAH:=lout/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	prg2lout lout
INSTALL_TARGET=	install installman installdoc
USE_GROFF =	Yes
NO_REGRESS=	Yes

WANTLIB=	c m z

MULTI_PACKAGES=	-doc -main

PKG_ARCH-doc=	*
WANTLIB-doc=

.include <bsd.port.mk>
