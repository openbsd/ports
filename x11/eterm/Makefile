COMMENT=	color X11 terminal emulator with transparency support
COMMENT-kanji=	color japanese terminal emulator with transparency support

V=		0.9.6
DISTNAME=	Eterm-$V
# also see below
PKGNAME=	eterm-$V
REVISION=	2
SHARED_LIBS +=  Eterm                1.0      # unknown
CATEGORIES=	x11

HOMEPAGE=	http://www.eterm.org/

# GPL with some custom licenses
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/download/ \
		${SITE_SOURCEFORGE:=eterm/}

WANTLIB += ICE Imlib2 SM X11 X11-xcb XRes Xext ast c freetype
WANTLIB += iconv m pcre util xcb xcb-shm z

LIB_DEPENDS=	converters/libiconv \
		devel/libast \

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-trans \
		--enable-utmp \
		--enable-xim \
		--without-pty-group \
		--with-theme-update \
		--with-backspace=bs \
		--without-terminfo
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv" \
		ac_cv_path_GDB=no

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
