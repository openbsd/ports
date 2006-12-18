# $OpenBSD: Makefile,v 1.2 2006/12/18 22:27:56 kili Exp $

COMMENT=		"client for MPD to submit tracks to Audioscrobbler"
CATEGORIES=		audio
DISTNAME=		scmpc-0.2.2

HOMEPAGE=		http://scmpc.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto pthread ssl z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=scmpc/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

MODULES+=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+= 	CFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=		argtable2.>=1::devel/argtable \
			confuse.>=0::devel/libconfuse \
			daemon.>=2::devel/libdaemon \
			curl.>=5::net/curl

USE_GMAKE=		Yes

.include <bsd.port.mk>
