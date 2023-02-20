COMMENT-main =		interface to the wxWidgets cross-platform GUI toolkit
COMMENT-media =		wxMedia support for p5-Wx
COMMENT-webkit =	wxWebView support for p5-Wx

V =			0.9932
DISTNAME =		Wx-${V}
FULLPKGNAME-media =	p5-Wx-media-${V}
FULLPKGNAME-webkit =	p5-Wx-webkit-${V}

REVISION-main =		4
REVISION-media =	0
REVISION-webkit =	0

CATEGORIES =		x11 devel

# patches from Fedora for wxWidgets>=3.2
MASTER_SITES0 =		https://src.fedoraproject.org/rpms/perl-Wx/raw/rawhide/f/
PATCHFILES =		Wx-0.9932-Undefine-BOM_UTF8.patch:0 \
			gtk3.patch:0 \
			wxWidgets_3.2_MakeMaker.patch:0 \
			wxWidgets_3.2_port.patch:0
PATCH_DIST_STRIP =	-p1

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes


MODULES =		cpan
CPAN_AUTHOR =		MDOOTSON

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES =	-main -media -webkit

WANTLIB += ${COMPILER_LIBCXX} c m perl wx_baseu-3.2 wx_gtk3u_core-3.2

WANTLIB-main += ${WANTLIB}
WANTLIB-main += wx_baseu_net-3.2 wx_baseu_xml-3.2 wx_gtk3u_aui-3.2
WANTLIB-main += wx_gtk3u_html-3.2 wx_gtk3u_propgrid-3.2 wx_gtk3u_ribbon-3.2
WANTLIB-main += wx_gtk3u_richtext-3.2 wx_gtk3u_stc-3.2 wx_gtk3u_xrc-3.2

WANTLIB-media += ${WANTLIB} wx_gtk3u_media-3.2

WANTLIB-webkit += ${WANTLIB} wx_gtk3u_webview-3.2

BUILD_DEPENDS =		devel/p5-Alien-wxWidgets \
			devel/p5-ExtUtils-XSpp

# see post-extract; needed for Fedora patches to apply
BUILD_DEPENDS +=	converters/dos2unix

RUN_DEPENDS =		devel/p5-ExtUtils-XSpp

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/wxWidgets

LIB_DEPENDS-media =	${LIB_DEPENDS} \
			x11/wxWidgets,-media

LIB_DEPENDS-webkit =	${LIB_DEPENDS} \
			x11/wxWidgets,-webkit

RUN_DEPENDS-media =	${RUN_DEPENDS} \
			${BASE_PKGPATH}

RUN_DEPENDS-webkit =	${RUN_DEPENDS} \
			${BASE_PKGPATH}

CONFIGURE_ARGS=		--wx-unicode \
			--wx-toolkit=gtk \
			--wx-version=$$(wx-config --version | cut -d . -f 1-2)

post-extract:
	${LOCALBASE}/bin/dos2unix ${WRKSRC}/{MANIFEST,typemap}

.include <bsd.port.mk>

# XXX Can't exec "gcc":
# No such file or directory at /usr/libdata/perl5/ExtUtils/CBuilder/Base.pm line 342.
.if ${CHOSEN_COMPILER} == "base-clang"
COMPILER_LINKS +=	gcc /usr/bin/clang
COMPILER_LINKS +=	g++ /usr/bin/clang++
.endif

