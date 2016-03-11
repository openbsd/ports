# $OpenBSD: Makefile.inc,v 1.2 2016/03/11 19:59:17 naddy Exp $

V=			1.2.3
DISTNAME=		libfm-${V}
EXTRACT_SUFX=		.tar.xz

CATEGORIES +=		x11 devel

HOMEPAGE=		http://pcmanfm.sourceforge.net/

SHARED_LIBS +=  fm                   1.0      # 4.3
SHARED_LIBS +=  fm-extra             1.0      # 4.3
SHARED_LIBS +=  fm-gtk               1.0      # 4.3

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

MODULES +=		devel/gettext \
			textproc/intltool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# prevent undefined references to libc functions
CONFIGURE_ENV +=	ac_cv_ld_z_defs=no

