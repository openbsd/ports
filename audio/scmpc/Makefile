# $OpenBSD: Makefile,v 1.16 2011/05/11 06:22:16 ajacoutot Exp $

COMMENT=		client for MPD to submit tracks to Last.fm
CATEGORIES=		audio
DISTNAME=		scmpc-0.2.2
REVISION=		9

HOMEPAGE=		http://scmpc.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread argtable2>=1 confuse daemon>=2 curl>=5

MASTER_SITES=		${MASTER_SITE_BERLIOS:=scmpc/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

MODULES+=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="-I${LOCALBASE}/include"
USE_GROFF =		Yes

LIB_DEPENDS=		devel/argtable \
			devel/libconfuse \
			devel/libdaemon \
			net/curl

USE_GMAKE=		Yes

.include <bsd.port.mk>
