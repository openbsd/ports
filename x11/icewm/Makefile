# $OpenBSD: Makefile,v 1.15 2004/05/21 17:00:08 naddy Exp $

COMMENT=		"small, fast window manager"

DISTNAME=		icewm-1.2.13
CATEGORIES=     	x11	

HOMEPAGE=		http://www.icewm.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=icewm/}

LIB_DEPENDS=		Imlib.19::graphics/imlib

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

post-install:
	@perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g;' \
		-e 's:%%PREFIX%%:${TRUEPREFIX}:g;' \
		${PREFIX}/share/doc/icewm/icewm-7.html

.include <bsd.port.mk>
