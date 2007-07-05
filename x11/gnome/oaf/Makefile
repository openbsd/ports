# $OpenBSD: Makefile,v 1.21 2007/07/05 22:50:11 jasper Exp $

COMMENT=		Object Activation Framework for GNOME

GNOME_PROJECT=		oaf
GNOME_VERSION=		0.6.10
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		oaf 1.0
CATEGORIES=		devel

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		ORBit.>=5,IIOP,ORBitCosNaming,ORBitutil::devel/ORBit \
			xml.>=9::textproc/libxml1 \
			popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c glib gmodule m wrap z

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-orbittest # XXX problems with warnings
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKSRC}/liboaf/.libs -L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oaf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/oaf/

.include <bsd.port.mk>
