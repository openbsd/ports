# $OpenBSD: Makefile,v 1.2 2004/04/18 06:41:11 robert Exp $

COMMENT=		"color ascii art library"
DISTNAME=		libcaca-0.9
CATEGORIES=		graphics

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=		http://sam.zoy.org/projects/libcaca/
MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=    	Imlib2.1::graphics/imlib2

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11
.else
USE_X11=		Yes
.endif

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-doc --disable-slang

.include <bsd.port.mk>
