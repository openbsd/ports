# $OpenBSD: Makefile,v 1.5 2006/10/09 10:33:01 espie Exp $

COMMENT='firewall gui'
CATEGORIES=net security

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
HOMEPAGE=http://www.fwbuilder.org/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=fwbuilder/}
DISTNAME=	fwbuilder-2.0.12
PKGNAME=	${DISTNAME}p0
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder

MODULES=	x11/qt3
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST} ${MAKE_FLAGS}
LIB_DEPENDS=	fwcompiler.>=8,fwbuilder.>=8::security/libfwbuilder
NO_REGRESS=	Yes

WANTLIB=	stdc++ c util m X11 ssl z crypto Xext pthread iconv xslt xml2 netsnmp

# before qt 4, there is no distinction between INSTALL_FILE and INSTALL_PROGRAM

post-install:
	chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*

.include <bsd.port.mk>
