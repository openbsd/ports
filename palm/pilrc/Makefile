# $OpenBSD: Makefile,v 1.1.1.1 2001/08/17 02:49:57 pvalchev Exp $

COMMENT=	"generate resources for PalmOS applications from text descr"

DISTNAME=	pilrc-2.8p5
PKGNAME=	${DISTNAME:S/p4/.4/}
CATEGORIES=	palm devel
NEED_VERSION=	1.438

HOMEPAGE=	http://www.ardiri.com/index.php?redir=palm\&cat=pilrc

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hig.se/~ardiri/download/palm/

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-pilrcui

DOCDIR=		${PREFIX}/share/doc/pilrc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${DOCDIR}/images
	cd ${WRKSRC}/doc && \
		${INSTALL_DATA} archive.html download.html index.html \
		contrib.html history.html manual.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/images/download.gif ${DOCDIR}/images

.include <bsd.port.mk>
