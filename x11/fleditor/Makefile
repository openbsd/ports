# $OpenBSD: Makefile,v 1.6 2001/09/07 16:35:51 heko Exp $

COMMENT=		'Text Editor for FLTK'

DISTNAME=		fl_editor-0.4.2
PKGNAME=		fleditor-0.4.2
CATEGORIES=		x11
NEED_VERSION=		1.448

HOMEPAGE=		http://www.robertk.com/source/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.robertk.com/source/fl_editor/
EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		fltk.::x11/fltk
BUILD_DEPENDS=		${LOCALBASE}/lib/libflvw.a::x11/flvw

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-fltk=${LOCALBASE}

WRKDIST=		${WRKDIR}/fl_editor

post-patch:
	@rmdir ${WRKSRC}/obj

do-install:
	@${install_shared_frag}
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*.[Hh] ${PREFIX}/include/FL

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
install_shared_frag= :
.else
install_shared_frag=\
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.so* ${PREFIX}/lib
.endif

