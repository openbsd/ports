# $OpenBSD: Makefile,v 1.11 2002/02/15 19:13:15 nino Exp $

COMMENT=		"applets for use with the GNOME panel"

DISTNAME=		gnome-applets-1.4.0.5
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.504
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-applets
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop,gtop_common,gtop_sysdeps::devel/libgtop,gnome
BUILD_DEPENDS=		:zsh-*:shells/zsh/stable

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
MAKE_FLAGS+=		LIBTOOL='$(WRKBUILD)/sh $(WRKBUILD)/libtool'
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# use zsh as a shell replacement
pre-build:
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-applets/

.include <bsd.port.mk>
