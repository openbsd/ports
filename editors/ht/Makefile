# $OpenBSD: Makefile,v 1.1.1.1 2003/05/17 07:29:33 margarida Exp $

COMMENT=		"file editor/viewer/analyzer for executables"

DISTNAME=		ht-0.7.1
CATEGORIES=		editors

HOMEPAGE=		http:/hte.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hte/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	 --disable-x11-textmode
.endif

USE_X11=		Yes
USE_GMAKE=		Yes

DOCS=			README ht.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/ht 

NO_REGRESS=		Yes

.include <bsd.port.mk>
