# $OpenBSD: Makefile,v 1.7 2002/09/20 08:15:16 nino Exp $

COMMENT=		"sample theme engines for GTK+ provided with GNOME"

DISTNAME=		gtk-engines-0.12
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/0.12/}

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
