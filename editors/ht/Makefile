# $OpenBSD: Makefile,v 1.4 2003/11/11 19:54:07 margarida Exp $

COMMENT=		"file editor/viewer/analyzer for executables"

DISTNAME=		ht-0.7.4
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
USE_GMAKE=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11-textmode
.else
USE_X11=		Yes
.endif

DOCS=			README ht.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/ht 

NO_REGRESS=		Yes

.include <bsd.port.mk>
