# $OpenBSD: Makefile,v 1.4 2008/05/02 13:17:16 sthen Exp $

COMMENT=	graphical toolkit for Tcl

VERSION=	8.5.2

DISTNAME=	tk${VERSION}
PKGNAME=	tk-${VERSION}p2
SHARED_LIBS=	tk85 0.0
CATEGORIES=	x11 x11/tk
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES=	tk${VERSION}-src.tar.gz
WANTLIB=	X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig freetype m z

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>
HOMEPAGE=	http://www.tcl.tk/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    tcl85:tcl-8.5.*:lang/tcl/8.5

FLAVORS=	threaded
FLAVOR?=

WRKSRC=		${WRKDIST}/unix

USE_X11=	Yes
SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf no-autoheader old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl="${LOCALBASE}/lib/tcl8.5" \
		--includedir="${LOCALBASE}/include/tk8.5" \
		--mandir="${LOCALBASE}/lib/tk8.5/man" \
		--sysconfdir="${SYSCONFDIR}"

CONFIGURE_ENV+=	LIBtk85_VERSION="${LIBtk85_VERSION}"
CONFIGURE_ENV+= CFLAGS=""

FAKE_FLAGS=	INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_LIBRARY="${INSTALL_DATA}" \
		INSTALL_DATA="${INSTALL_DATA}"

FAKE_FLAGS+=INSTALL_PROGRAM="${INSTALL_PROGRAM}"

.if ${FLAVOR:L:Mthreaded}
CONFIGURE_ARGS+=--enable-threads
WANTLIB+=pthread
.endif

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_TARGET=	test
REGRESS_FLAGS=	HOME=${TESTHOME}
REGRESS_FLAGS+=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
TESTHOME=${WRKDIR}/testhome

pre-regress:
.for t in DISPLAY XAUTHORITY
.  if !defined($t)
	@echo "$t needs to be set to run regress"; exit 1
.  endif
.endfor
	@mkdir -p ${TESTHOME}

post-install:
	ln -s libtkstub85.a ${PREFIX}/lib/libtkstub85_pic.a

.include <bsd.port.mk>
