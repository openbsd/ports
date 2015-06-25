# $OpenBSD: Makefile,v 1.43 2015/06/25 13:00:58 ajacoutot Exp $

COMMENT=	color X11 terminal emulator with transparency support
COMMENT-kanji=	color japanese terminal emulator with transparency support

V=		0.9.6
DISTNAME=	Eterm-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
# also see below
PKGNAME=	eterm-$V
SHARED_LIBS +=  Eterm                1.0      # unknown
CATEGORIES=	x11

HOMEPAGE=	http://www.eterm.org/

# GPL with some custom licenses
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=eterm/}

WANTLIB += ICE Imlib2 SM X11 XRes Xext ast c freetype m ttf util
WANTLIB += xcb z

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/libast \
		print/freetype

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-trans \
		--enable-utmp \
		--enable-xim \
		--without-pty-group \
		--with-theme-update \
		--with-backspace=bs \
		--without-terminfo
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

FLAVORS=	kanji
FLAVOR?=

.if ${FLAVOR:Mkanji}
FULLPKGNAME=	ja-eterm-$V
CATEGORIES+=	japanese
CONFIGURE_ARGS+=--enable-multi-charset=kanji
.else
CONFIGURE_ARGS+=--enable-multi-charset
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>
