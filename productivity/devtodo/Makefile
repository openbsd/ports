# $OpenBSD: Makefile,v 1.2 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"a reminder/task program aimed at developers"

VERSION=		0.1.14
DISTNAME=		devtodo-${VERSION}
CATEGORIES=		productivity devel

HOMEPAGE=		http://devtodo.sourceforge.net/

MASTER_SITES=		http://devtodo.sourceforge.net/?0.1.14/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/devtodo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/devtodo
	cd ${WRKSRC} && ${INSTALL_DATA} README QuickStart \
  	  ${PREFIX}/share/doc/devtodo
	cd ${WRKSRC}/doc && ${INSTALL_DATA} scripts.sh scripts.tcsh todorc.example \
	  ${PREFIX}/share/examples/devtodo

.include <bsd.port.mk>
