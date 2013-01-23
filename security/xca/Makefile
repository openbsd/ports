# $OpenBSD: Makefile,v 1.1.1.1 2013/01/23 08:38:53 jasper Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

DISTNAME=	xca-0.9.3
CATEGORIES=	security x11

HOMEPAGE=	http://xca.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xca/}

MODULES=	x11/qt4

USE_GMAKE=	Yes

CONFIGURE_STYLE=simple

WANTLIB += QtGui X11 c crypto ltdl pthread ssl stdc++

LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

NO_REGRESS=	Yes

SUBST_VARS+=	WRKINST

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
