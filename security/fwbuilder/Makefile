# $OpenBSD: Makefile,v 1.2 2005/05/26 21:18:47 naddy Exp $

COMMENT='firewall gui'
CATEGORIES=net security

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
HOMEPAGE=http://www.fwbuilder.org/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=fwbuilder/}
DISTNAME=fwbuilder-2.0.7
PKGNAME=${DISTNAME}p0
CONFIGURE_STYLE=gnu

MODULES=x11/qt3
FAKE_FLAGS=INSTALL_ROOT=${WRKINST} ${MAKE_FLAGS}
LIB_DEPENDS=fwcompiler,fwbuilder::security/libfwbuilder
NO_REGRESS=Yes

WANTLIB=stdc++ c util m X11 ssl z crypto Xext pthread iconv xslt xml2 netsnmp

.include <bsd.port.mk>
