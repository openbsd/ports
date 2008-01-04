# $OpenBSD: Makefile,v 1.9 2008/01/04 17:48:37 espie Exp $

COMMENT=firewall gui
CATEGORIES=net security

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
HOMEPAGE=	http://www.fwbuilder.org/

SHARE=		share/fwbuilder21
SUBST_VARS=	SHARE

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}
DISTNAME=	fwbuilder-2.1.8
PKGNAME=	${DISTNAME}
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder

MODULES=	x11/qt3
DESTDIRNAME=	INSTALL_ROOT
LIB_DEPENDS=	fwcompiler.>=9,fwbuilder.>=9::security/libfwbuilder
NO_REGRESS=	Yes
USE_X11=	Yes

WANTLIB=	stdc++ c util m X11 ssl z crypto Xext pthread iconv xslt xml2 netsnmp

# before qt 4, there is no distinction between INSTALL_FILE and INSTALL_PROGRAM

post-install:
	chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*

.include <bsd.port.mk>
