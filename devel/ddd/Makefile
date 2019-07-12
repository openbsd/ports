# $OpenBSD: Makefile,v 1.80 2019/07/12 20:44:07 sthen Exp $

COMMENT=	Data Display Debugger, graphical front-end for GDB, etc

DISTNAME=	ddd-3.3.12
REVISION =	15
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ddd/}

HOMEPAGE=	https://www.gnu.org/software/ddd/

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xdmcp Xext Xft
WANTLIB += Xm Xmu Xpm Xrender Xt c curses expat fontconfig
WANTLIB += freetype iconv jpeg m png xcb z

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	converters/libiconv \
		x11/motif

TEST_IS_INTERACTIVE=x11

USE_GMAKE=	Yes
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS}"
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

# needed for is_ppc_file() in ddd/filetype.C
.if ${MACHINE_ARCH} == "powerpc"
WANTLIB +=	elf
.else
CONFIGURE_ENV += ac_cv_lib_elf_elf_version=no
.endif

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	--with-readline-libraries=/usr/lib

MAKE_FLAGS=	MAINTAINER="'${MAINTAINER}'"
FAKE_FLAGS=	dddrootdir="${PREFIX}/share/ddd/" \
		dddappdir="${PREFIX}/share/ddd/ddd/"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/*.ps  ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf  ${PREFIX}/share/doc/ddd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/*  ${PREFIX}/share/doc/ddd/html

.include <bsd.port.mk>
