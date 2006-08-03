# $OpenBSD: Makefile,v 1.4 2006/08/03 23:28:11 espie Exp $

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
PKGNAME=	${DISTNAME}
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder

MODULES=	x11/qt3
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST} ${MAKE_FLAGS}
LIB_DEPENDS=	fwcompiler.>=8,fwbuilder.>=8::security/libfwbuilder
NO_REGRESS=	Yes

WANTLIB=	stdc++ c util m X11 ssl z crypto Xext pthread iconv xslt xml2 netsnmp

.include <bsd.port.mk>
