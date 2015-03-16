# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:55 naddy Exp $

COMMENT=	open source SIP User-Agent library

DISTNAME=	sofia-sip-1.12.11
SHARED_LIBS +=  sofia-sip-ua-glib         0.0 # 3.0
SHARED_LIBS +=  sofia-sip-ua              0.0 # 6.0
REVISION=	0

API=		1.12

CATEGORIES=	telephony

HOMEPAGE=	http://sofia-sip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sofia-sip/}

MODULES=	devel/gettext

WANTLIB += 	c crypto glib-2.0 pcre pthread ssl

BUILD_DEPENDS=		devel/check
LIB_DEPENDS=		devel/glib2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include/ \
			ac_cv_prog_DOXYGEN=

MAKE_FLAGS=		SOFIA_SILENT=""

SUBST_VARS+=		API

.include <bsd.port.mk>
