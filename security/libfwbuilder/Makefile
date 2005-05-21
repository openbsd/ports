# $OpenBSD: Makefile,v 1.1.1.1 2005/05/21 09:35:19 espie Exp $

COMMENT='libraries for fwbuilder'
CATEGORIES=net security

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
HOMEPAGE=http://www.fwbuilder.org/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=fwbuilder/}
DISTNAME=libfwbuilder-2.0.7
CONFIGURE_STYLE=gnu

MODULES=x11/qt3
FAKE_FLAGS=INSTALL_ROOT=${WRKINST} ${MAKE_FLAGS}
LIB_DEPENDS+=	xslt::textproc/libxslt \
	    	netsnmp::net/net-snmp
NO_REGRESS=Yes

WANTLIB=m ssl crypto z xml2 iconv

.include <bsd.port.mk>
