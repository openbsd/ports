# $OpenBSD: Makefile,v 1.11 2008/06/02 19:38:09 okan Exp $

COMMENT=		file editor/viewer/analyzer for executables

DISTNAME=		ht-2.0.14
CATEGORIES=		editors

HOMEPAGE=		http://hte.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hte/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses stdc++

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	${INSTALL_DATA} ${WRKSRC}/doc/{README,ht.html} ${PREFIX}/share/doc/ht

.include <bsd.port.mk>
