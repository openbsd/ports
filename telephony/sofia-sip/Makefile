# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:56 sthen Exp $

COMMENT=	open source SIP User-Agent library

DISTNAME=	sofia-sip-1.12.11
SHARED_LIBS +=  sofia-sip-ua-glib         0.0 # 3.0
SHARED_LIBS +=  sofia-sip-ua              0.0 # 6.0
REVISION=	1

API=		1.12

CATEGORIES=	telephony

HOMEPAGE=	http://sofia-sip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto glib-2.0 iconv intl pcre pthread ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sofia-sip/}


BUILD_DEPENDS=		devel/check
LIB_DEPENDS=		devel/glib2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include/ \
			ac_cv_prog_DOXYGEN=

MAKE_FLAGS=		SOFIA_SILENT=""

SUBST_VARS+=		API

.include <bsd.port.mk>
