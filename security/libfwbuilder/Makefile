# $OpenBSD: Makefile,v 1.10 2008/12/05 21:50:57 steven Exp $

COMMENT=	libraries for fwbuilder
DISTNAME=	libfwbuilder-3.0.2
CATEGORIES=	net security
SHARED_LIBS=	fwbuilder	11.0 \
		fwcompiler	11.0

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
