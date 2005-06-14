# $OpenBSD: Makefile,v 1.1 2005/06/14 15:34:27 db Exp $

COMMENT= 	"object oriented type setting language"
COMMENT-doc=	"Lout user and expert documentation"

DISTNAME=       lout-3.30
PKGNAME-doc=    ${PKGNAME:S/-/-doc-/}
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
NO_REGRESS=	Yes

WANTLIB=	c m z

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-doc"
PKG_ARCH=               *
WANTLIB=
.endif

.include <bsd.port.mk>
