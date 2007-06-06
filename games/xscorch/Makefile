# $OpenBSD: Makefile,v 1.1.1.1 2007/06/06 19:32:25 jasper Exp $

COMMENT=		Scorced Earth-clone

DISTNAME=		xscorch-0.2.0
CATEGORIES=		games

HOMEPAGE=		http://www.xscorch.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		${HOMEPAGE}/releases/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			xscorch-0.2.0-64bit.patch.gz \
			xscorch-0.2.0-stack-smash.patch.gz

LIB_DEPENDS=		mikmod::audio/libmikmod \
			gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-x \
			--with-gtk \
			--without-gnome

post-extract:
	cd ${WRKSRC} && patch < ${WRKDIR}/xscorch-0.2.0-64bit.patch
	cd ${WRKSRC} && patch < ${WRKDIR}/xscorch-0.2.0-stack-smash.patch
	find ${WRKDIST} -name \*.orig -print0 | xargs -0 rm

.include <bsd.port.mk>
