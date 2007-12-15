#$OpenBSD: Makefile,v 1.2 2007/12/15 21:00:30 ajacoutot Exp $

COMMENT=	open source MSN Messenger clone

DISTNAME=	amsn-0.96
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.amsn-project.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amsn/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	ICE SM X11 m z stdc++

LIB_DEPENDS=	jpeg::graphics/jpeg \
		png::graphics/png
RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4 \
		::security/tcltls \
		::x11/bwidget \
		:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS= 	:tk-8.4.*:x11/tk/8.4 \
		::security/tcltls

USE_GMAKE=	Yes
MAKE_FLAGS=	verbose=yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--with-tcl=${LOCALBASE}/lib/tcl8.4 \
		--with-tk=${LOCALBASE}/lib/tk8.4

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-lm -L${LOCALBASE}/lib -fPIC" \
		TK_INC_SPEC="${LOCALBASE}/include/tk8.4/generic" \
		TCLSH="${LOCALBASE}/bin/tclsh8.4"

pre-configure:
	perl -pi -e 's|__LOCALBASE__|${LOCALBASE}|' ${WRKSRC}/amsn*
	perl -pi -e 's|AMSN_BWidget|BWidget|' ${WRKSRC}/*.tcl

post-install:
.for a in amsn amsn-remote amsn-remote-CLI
	cd ${PREFIX}/bin && ln -s ../share/amsn/$a
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/{FAQ,README} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/docs/{FAQ,README}* ${PREFIX}/share/doc/amsn

.include <bsd.port.mk>
