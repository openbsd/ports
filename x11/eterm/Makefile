# $OpenBSD: Makefile,v 1.24 2007/11/18 12:55:58 jasper Exp $

COMMENT=	color X11 terminal emulator with transparency support
COMMENT-kanji=	color japanese terminal emulator with transparency support

V=		0.9.4
DISTNAME=	Eterm-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		Eterm-bg-scale-1${EXTRACT_SUFX}:0 \
		Eterm-bg-scale-2${EXTRACT_SUFX}:0 \
		Eterm-bg-tile${EXTRACT_SUFX}:0
PKGNAME=	eterm-$V
FULLPKGNAME-kanji=	ja-eterm-$V
SHARED_LIBS +=	Eterm                1.0      # .0.0
CATEGORIES=	x11

HOMEPAGE=	http://www.eterm.org/

# GPL with some custom licenses
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=eterm/}
MASTER_SITES0=	http://freeware.sgi.com/source/Eterm/

WANTLIB=	ICE Imlib2 SM X11 XRes Xau Xdmcp Xext Xmu Xt c freetype \
		m util z

LIB_DEPENDS=	ast::devel/libast

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-trans \
		--enable-utmp \
		--enable-xim \
		--with-theme-update \
		--with-backspace=bs \
		--without-terminfo
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	kanji
FLAVOR?=

.if ${FLAVOR:L:Mkanji}
CATEGORIES+=	japanese
CONFIGURE_ARGS+=--enable-multi-charset=kanji
.else
CONFIGURE_ARGS+=--enable-multi-charset
.endif

pre-extract:
	ln -sf ${WRKSRC} ${WRKDIR}/Eterm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>
