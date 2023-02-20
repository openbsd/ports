COMMENT =		interface to the wxWidgets cross-platform GUI toolkit

V =			0.9932
DISTNAME =		Wx-${V}
REVISION =		5

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

WANTLIB += ${COMPILER_LIBCXX} c m perl wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_baseu_xml-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_media-3.2 wx_gtk3u_propgrid-3.2
WANTLIB += wx_gtk3u_ribbon-3.2 wx_gtk3u_richtext-3.2 wx_gtk3u_stc-3.2
WANTLIB += wx_gtk3u_xrc-3.2

BUILD_DEPENDS =		devel/p5-Alien-wxWidgets \
			devel/p5-ExtUtils-XSpp

# see post-extract; needed for Fedora patches to apply
BUILD_DEPENDS +=	converters/dos2unix

RUN_DEPENDS =		devel/p5-ExtUtils-XSpp

LIB_DEPENDS =		x11/wxWidgets,-media

CONFIGURE_ARGS=		--wx-unicode \
			--wx-toolkit=gtk \
			--wx-version=$$(wx-config --version | cut -d . -f 1-2)

post-extract:
	${LOCALBASE}/bin/dos2unix ${WRKSRC}/{MANIFEST,typemap}

# XXX Can't exec "gcc":
# No such file or directory at /usr/libdata/perl5/ExtUtils/CBuilder/Base.pm line 342.
pre-configure:
	if [[ ! -e ${WRKDIR}/bin/gcc ]]; then \
		ln -sf clang ${WRKDIR}/bin/gcc ;\
		ln -sf clang++ ${WRKDIR}/bin/g++ ;\
	fi

.include <bsd.port.mk>
