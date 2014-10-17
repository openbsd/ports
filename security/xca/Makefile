# $OpenBSD: Makefile,v 1.3 2014/10/17 14:53:55 sthen Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

DISTNAME=	xca-0.9.3
REVISION=	0
CATEGORIES=	security x11

HOMEPAGE=	http://xca.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xca/}

MODULES=	x11/qt4

USE_GMAKE=	Yes

CONFIGURE_STYLE=simple

WANTLIB += QtGui X11 c crypto ltdl pthread ssl stdc++

LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

NO_TEST=	Yes

SUBST_VARS+=	WRKINST

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
