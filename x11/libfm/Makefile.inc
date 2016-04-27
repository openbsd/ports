# $OpenBSD: Makefile.inc,v 1.3 2016/04/27 13:27:00 ajacoutot Exp $

V=			1.2.4
DISTNAME=		libfm-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  fm                   1.0      # 4.4
SHARED_LIBS +=  fm-gtk               1.0      # 4.4
SHARED_LIBS +=  fm-extra             1.0      # 4.4

CATEGORIES +=		x11 devel

HOMEPAGE=		http://pcmanfm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

MODULES +=		textproc/intltool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# prevent undefined references to libc functions
CONFIGURE_ENV +=	ac_cv_ld_z_defs=no

