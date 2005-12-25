# $OpenBSD: Makefile,v 1.2 2005/12/25 09:43:20 sturm Exp $

COMMENT=	'libraries for fwbuilder'
DISTNAME=	libfwbuilder-2.0.7
CATEGORIES=	net security

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

FAKE_FLAGS=	INSTALL_ROOT=${WRKINST} ${MAKE_FLAGS}

.include <bsd.port.mk>
