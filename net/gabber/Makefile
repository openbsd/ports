# $OpenBSD: Makefile,v 1.2 2002/12/23 00:03:57 grange Exp $
# $RuOBSD: Makefile,v 1.9 2002/10/28 16:01:41 grange Exp $

COMMENT=		"GNOME jabber client"

DISTNAME=		gabber-0.8.7
CATEGORIES=		net x11/gnome

HOMEPAGE=		http://gabber.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gabber/}

LIB_DEPENDS=		sigc.0::devel/libsigc++ gal.19::devel/gal \
			gnomemm.9::x11/gnomemm

RUN_DEPENDS=		:gnupg-*:security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ipv6

NO_REGRESS=		Yes

FLAVORS=		xmms
FLAVOR?=

.if ${FLAVOR:L:Mxmms}
LIB_DEPENDS+=		xmms.3::audio/xmms
.else
CONFIGURE_ARGS+=	--disable-xmms
.endif

.include <bsd.port.mk>
