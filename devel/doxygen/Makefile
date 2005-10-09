# $OpenBSD: Makefile,v 1.3 2005/10/09 21:42:04 bernd Exp $

COMMENT=	"documentation system for C++/C/Java/Objective-C/IDL and others"
COMMENT-gui=	"GUI front-end for doxygen"

VERSION=	1.4.5
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-${VERSION}
FULLPKGNAME-gui=doxygen-gui-${VERSION}
CATEGORIES=	devel textproc 

HOMEPAGE=	http://www.doxygen.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.stack.nl/pub/users/dimitri/

PSEUDO_FLAVORS=	gui
FLAVOR?=

LIB_DEPENDS=	png.4::graphics/png

WANTLIB=	m c stdc++

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix ${WRKINST}${LOCALBASE} \
		--install /usr/bin/install \
		--make /usr/bin/make

SUBPACKAGE?=	

.if ${FLAVOR:Mgui}
CONFIGURE_ARGS+=--with-doxywizard
CONFIGURE_ENV=	QTDIR=${LOCALBASE}

MODULES=	x11/qt3

MULTI_PACKAGES=	-gui
.endif

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
WANTLIB+=	X11 Xext pthread
LIB_DEPENDS=
RUN_DEPENDS=	:doxygen-${VERSION}:devel/doxygen
.  else
WANTLIB+=	z
MODULES=
.  endif
.endif

MAKE_FLAGS+=	CXX=${CXX} CC=${CC} _CFLAGS="${CXXFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"
WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

.include <bsd.port.mk>
