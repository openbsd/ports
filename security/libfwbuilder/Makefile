# $OpenBSD: Makefile,v 1.3 2005/12/28 22:52:30 sturm Exp $

COMMENT=	'libraries for fwbuilder'
DISTNAME=	libfwbuilder-2.0.7
CATEGORIES=	net security
SHARED_LIBS=	fwbuilder	6.30 \
		fwcompiler	6.30

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

NO_REGRESS=	Yes

MAKE_FLAGS=	LIBfwbuilder_VERSION=${LIBfwbuilder_VERSION} \
		LIBfwcompiler_VERSION=${LIBfwcompiler_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} INSTALL_ROOT=${WRKINST}

.include <bsd.port.mk>
