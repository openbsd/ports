# $OpenBSD: Makefile,v 1.12 2010/03/21 10:41:43 jasper Exp $

COMMENT=	generate resources for PalmOS applications from text descr

DISTNAME=	pilrc-3.2
CATEGORIES=	palm devel

HOMEPAGE=	http://www.ardiri.com/index.php?redir=palm\&cat=pilrc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pilrc/}

USE_GMAKE=	Yes
NO_REGRESS=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-pilrcui
CONFIGURE_SCRIPT=${WRKSRC}/unix/configure

DOCDIR=		${PREFIX}/share/doc/pilrc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${DOCDIR}/images
	cd ${WRKSRC}/doc && \
		${INSTALL_DATA} archive.html download.html index.html \
		contrib.html history.html manual.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/images/download.gif ${DOCDIR}/images

.include <bsd.port.mk>
