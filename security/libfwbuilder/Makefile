# $OpenBSD: Makefile,v 1.6 2007/01/29 11:56:13 espie Exp $

COMMENT=	'libraries for fwbuilder'
DISTNAME=	libfwbuilder-2.1.8
PKGNAME=	$(DISTNAME)
CATEGORIES=	net security
SHARED_LIBS=	fwbuilder	9.0 \
		fwcompiler	9.0

INCLUDE=	include/fwb-2.1
SHARE=		share/libfwbuilder21
SUBST_VARS=	INCLUDE SHARE

HOMEPAGE=	http://www.fwbuilder.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	m ssl crypto z xml2 iconv

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

MODULES=	x11/qt3
LIB_DEPENDS+=	xslt::textproc/libxslt \
	    	netsnmp::net/net-snmp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=	--with-docdir=${TRUEPREFIX}/share/doc/libfwbuilder

NO_REGRESS=	Yes

MAKE_FLAGS=	LIBfwbuilder_VERSION=${LIBfwbuilder_VERSION} \
		LIBfwcompiler_VERSION=${LIBfwcompiler_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} INSTALL_ROOT=${WRKINST}

.include <bsd.port.mk>
