# $OpenBSD: Makefile,v 1.30 2002/05/12 18:15:14 brad Exp $

COMMENT=	"high-performance CORBA ORB with support for the C language"

DISTNAME=	ORBit-0.5.13
CATEGORIES=	devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/ORBit

HOMEPAGE=	http://www.labs.redhat.com/orbit/

MODULES=	gettext
LIB_DEPENDS=	glib.1.2,gmodule.1.2::devel/glib \
		popt::devel/popt

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/popt ${WRKSRC}/libIDL
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-indent
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/orbit
	${INSTALL_DATA} ${FILESDIR}/orbitrc-sample \
	    ${PREFIX}/share/examples/orbit

.include <bsd.port.mk>
