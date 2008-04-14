# $OpenBSD: Makefile,v 1.32 2008/04/14 13:37:42 ajacoutot Exp $

COMMENT=	small, fast window manager

DISTNAME=	icewm-1.2.35
PKGNAME=	${DISTNAME}p0
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
		ungif z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=	devel/gettext

LIB_DEPENDS=	Imlib.>=19::graphics/imlib

USE_X11=	Yes

CONFIGURE_STYLE=gnu		
CONFIGURE_ARGS=	--with-imlib=${PREFIX}/bin \
		--with-docdir=${PREFIX}/share/doc \
		--with-libdir=${PREFIX}/share/icewm \
		--with-cfgdir=${SYSCONFDIR}/icewm \
		--with-kdedatadir=${LOCALBASE}/share \
		--with-x \
		--enable-shaped-decorations \
		--enable-gradients \
		--enable-corefonts \
		--enable-i18n
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" \
 || ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc" \
 || ${MACHINE_ARCH} == "amd64"
PATCH_LIST=	patch-* apm-*
.endif

post-install:
	@perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g;' \
		-e 's:%%PREFIX%%:${TRUEPREFIX}:g;' \
		${PREFIX}/share/doc/icewm/icewm-7.html

.include <bsd.port.mk>
