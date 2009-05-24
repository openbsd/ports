# $OpenBSD: Makefile,v 1.13 2009/05/24 20:03:47 benoit Exp $

COMMENT=		file editor/viewer/analyzer for executables

DISTNAME=		ht-2.0.17
CATEGORIES=		editors

HOMEPAGE=		http://hte.sourceforge.net/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hte/}

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

FLAVORS=		no_x11
FLAVOR?=

LIB_DEPENDS=		lzo::archivers/lzo

CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-transform-name='s/ht/hte/'

.if ${FLAVOR:Mno_x11}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--disable-x11-textmode
.else
USE_X11=		Yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			X11BASE=${X11BASE}
CONFIGURE_ARGS+=	--enable-x11-textmode
WANTLIB+=		X11
.endif

do-install:
	chmod +x ${WRKSRC}/install-sh
	 
post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ht ${PREFIX}/bin/hte
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	${INSTALL_DATA} ${WRKSRC}/doc/{README,ht.html} ${PREFIX}/share/doc/ht

.include <bsd.port.mk>
