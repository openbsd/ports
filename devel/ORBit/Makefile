# $OpenBSD: Makefile,v 1.38 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"high-performance CORBA ORB with support for the C language"

DISTNAME=	ORBit-0.5.13
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/ORBit/0.5/}

HOMEPAGE=	http://www.labs.redhat.com/orbit/

# workaround for a ld.so problem on alpha w/ orbit-idl
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST=		patch-* sup-alpha-*
.endif

LIB_DEPENDS=	glib.1.2,gmodule.1.2::devel/glib \
		popt::devel/popt

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m wrap

USE_GMAKE=	Yes
AUTOCONF_VERSION=2.13
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
