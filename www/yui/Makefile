# $OpenBSD: Makefile,v 1.2 2007/05/07 08:33:12 bernd Exp $

COMMENT-main=	'yahoo ui library toolkit'
COMMENT-docs=	'yahoo ui library examples'
CATEGORIES=	www devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes


V=		2.2.2
EXTRACT_SUFX=	.zip
DISTNAME=	yui_$V
PKGNAME-main=	yui-$Vp0
PKGNAME-docs=	yui-doc-$V
MULTI_PACKAGES=	-main -docs
PKG_ARCH=	*

HOMEPAGE=	http://developer.yahoo.com/yui/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yui/}
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/yui
	cd ${PREFIX}/htdocs && unzip -oq ${FULLDISTDIR}/${DISTFILES}

YUI=	htdocs/yui
BUILD=	${YUI}/build
DOC=	${YUI}/docs
EX=	${YUI}/examples
SUBST_VARS=	BUILD DOC EX YUI

RUN_DEPENDS-docs=	::${BASE_PKGPATH}


.include <bsd.port.mk>
