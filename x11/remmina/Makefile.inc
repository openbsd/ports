# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/04/20 15:07:36 jasper Exp $

SHARED_ONLY?=		Yes

CATEGORIES=		x11 net

HOMEPAGE=		http://remmina.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=remmina/}

MODULES=		devel/gettext \
			textproc/intltool

USE_GMAKE?=		Yes

CONFIGURE_STYLE?=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
