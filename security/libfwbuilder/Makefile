# $OpenBSD: Makefile,v 1.11 2009/04/13 14:11:23 steven Exp $

COMMENT=	libraries for fwbuilder
DISTNAME=	libfwbuilder-3.0.4
CATEGORIES=	net security
SHARED_LIBS=	fwbuilder	12.0 \
		fwcompiler	12.0

INCLUDE=	include/fwb-3
SHARE=		share/libfwbuilder
SUBST_VARS=	INCLUDE SHARE

HOMEPAGE=	http://www.fwbuilder.org/

MAINTAINER=	Vadim Zhukov <persgray@gmail.com>

# GPL v2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	m z iconv

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

MODULES=	x11/qt4
LIB_DEPENDS+=	xslt::textproc/libxslt \
		xml2::textproc/libxml \
	    	netsnmp::net/net-snmp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-docdir=${TRUEPREFIX}/share/doc/libfwbuilder \
		--with-templatedir=${TRUEPREFIX}/share/libfwbuilder \
		--with-qtdir=${MODQT_QTDIR} \
		QMAKE=${MODQT_QTDIR}/bin/qmake

NO_REGRESS=	Yes

MAKE_FLAGS=	LIBfwbuilder_VERSION=${LIBfwbuilder_VERSION} \
		LIBfwcompiler_VERSION=${LIBfwcompiler_VERSION}
DESTDIRNAME=	INSTALL_ROOT

.include <bsd.port.mk>
