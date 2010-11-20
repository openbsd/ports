# $OpenBSD: Makefile,v 1.7 2010/11/20 09:48:39 espie Exp $

COMMENT-main= 	object oriented type setting language
COMMENT-doc=	Lout user and expert documentation

DISTNAME=       lout-3.30
PKGNAME-main=	${DISTNAME}
REVISION-main =	1
PKGNAME-doc=    ${DISTNAME:S/-/-doc-/}
REVISION-doc =	0
CATEGORIES=	print

HOMEPAGE=	http://lout.sourceforge.net/
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=lout/}

MAINTAINER=	David Berghoff <db@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile
INSTALL_TARGET=	allinstall
USE_GROFF =	Yes
NO_REGRESS=	Yes

WANTLIB=	c m z

MULTI_PACKAGES=	-doc -main

PKG_ARCH-doc=	*
WANTLIB-doc=

.include <bsd.port.mk>
