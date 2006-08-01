# $OpenBSD: Makefile,v 1.41 2006/08/01 22:19:46 espie Exp $

COMMENT=	"high-performance CORBA ORB with support for the C language"

DISTNAME=	ORBit-0.5.13
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	IDL		4.4 \
		IIOP		5.13 \
		ORBit		5.13 \
		ORBitCosNaming	5.13 \
		ORBitutil	5.13

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/ORBit/0.5/}

HOMEPAGE=	http://www.labs.redhat.com/orbit/

# workaround for a ld.so problem on alpha w/ orbit-idl
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST=		patch-* sup-alpha-*
.endif

LIB_DEPENDS=	glib.>=1.2,gmodule.>=1.2::devel/glib \
		popt::devel/popt

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m wrap

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
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
