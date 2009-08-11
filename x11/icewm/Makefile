# $OpenBSD: Makefile,v 1.40 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	small and fast window manager

DISTNAME=	icewm-1.2.37
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11	

HOMEPAGE=	http://www.icewm.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xrandr Xrender \
		c expat fontconfig freetype jpeg m png stdc++ tiff \
		ungif z pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=	devel/gettext

LIB_DEPENDS=	Imlib.>=19::graphics/imlib

USE_X11=	Yes

# not all powerpc support apm(4), hence the use of ${MACHINE} and macppc
.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" \
 || ${MACHINE} == "macppc" || ${MACHINE_ARCH} == "sparc" \
 || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* apm-*
.endif

CONFIGURE_STYLE=gnu		
CONFIGURE_ARGS=	--with-imlib=${PREFIX}/bin \
		--with-docdir=${PREFIX}/share/doc \
		--with-libdir=${PREFIX}/share/icewm \
		--with-cfgdir=${SYSCONFDIR}/icewm \
		--with-kdedatadir=${LOCALBASE}/share \
		--with-x \
		--enable-shaped-decorations \
		--enable-corefonts \
		--enable-i18n

# XXX rendering bug on big-endian systems 
.if ${MACHINE_ARCH} != "hppa" && ${MACHINE_ARCH} != "m68k" && \
${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "mips64" && \
${MACHINE_ARCH} != "powerpc" && ${MACHINE_ARCH} != "sparc" && \
${MACHINE_ARCH} != "sparc64"
CONFIGURE_ARGS+= --enable-gradients
.endif

# XXX TODO
#CONFIGURE_ARGS+=--with-icesound=sndio

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm-7.html

.include <bsd.port.mk>
