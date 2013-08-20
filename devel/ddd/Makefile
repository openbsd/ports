# $OpenBSD: Makefile,v 1.64 2013/08/20 22:05:49 zhuk Exp $

COMMENT=	Data Display Debugger, graphical front-end for GDB, etc

DISTNAME=	ddd-3.3.12
REVISION=	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ddd/}

HOMEPAGE=	http://www.gnu.org/software/ddd/

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xaw Xau Xdmcp Xext Xmu Xpm Xt c m z stdc++ \
		Xft Xrender expat fontconfig freetype ncurses \
		pthread-stubs xcb jpeg png Xm

MODULES=	converters/libiconv

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/openmotif

TEST_IS_INTERACTIVE=x11

VMEM_WARNING=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS}"
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

# needed for is_ppc_file() in ddd/filetype.C
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
LIB_DEPENDS+=	devel/libelf
WANTLIB +=	elf
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
