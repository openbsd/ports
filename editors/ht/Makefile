# $OpenBSD: Makefile,v 1.9 2007/11/06 06:33:51 bernd Exp $

COMMENT=		file editor/viewer/analyzer for executables

DISTNAME=		ht-0.7.4
PKGNAME=		${DISTNAME}p1
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

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11-textmode
.else
USE_X11=		Yes
CONFIGURE_ENV=		X11BASE=${X11BASE} CPPFLAGS=-I${X11BASE}/include
CONFIGURE_ARGS+=	--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib
WANTLIB+=		X11
.endif

DOCS=			README ht.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/ht 

NO_REGRESS=		Yes

.include <bsd.port.mk>
