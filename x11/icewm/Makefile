# $OpenBSD: Makefile,v 1.26 2006/11/15 06:21:32 ajacoutot Exp $

COMMENT=		"small, fast window manager"

DISTNAME=		icewm-1.2.28
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	x11	

HOMEPAGE=		http://www.icewm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE Imlib SM X11 Xext Xft Xinerama Xrandr Xrender \
			c fontconfig freetype jpeg m png stdc++ tiff ungif z

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=		devel/gettext

LIB_DEPENDS=		Imlib.>=19::graphics/imlib

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE= 	gnu		
CONFIGURE_ARGS=		--with-imlib=${PREFIX}/bin \
			--with-docdir=${PREFIX}/share/doc \
			--with-libdir=${PREFIX}/share/icewm \
			--with-cfgdir=${SYSCONFDIR}/icewm \
			--disable-i18n \
			--enable-shaped-decorations \
			--enable-gradients
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" \
 || ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc"
PATCH_LIST=	patch-* apm-patch-src_aapm_cc apm-patch-src_aapm_h
.endif

post-install:
	@perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g;' \
		-e 's:%%PREFIX%%:${TRUEPREFIX}:g;' \
		${PREFIX}/share/doc/icewm/icewm-7.html

.include <bsd.port.mk>
