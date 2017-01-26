# $OpenBSD: Makefile.inc,v 1.4 2017/01/26 01:40:28 ajacoutot Exp $

V=			1.2.5
DISTNAME=		libfm-${V}
EXTRACT_SUFX=		.tar.xz

# quantum entanglement between core and extra
SHARED_LIBS +=  fm                   1.0      # 4.5
SHARED_LIBS +=  fm-gtk               1.0      # 4.5
SHARED_LIBS +=  fm-extra             1.0      # 4.5

CATEGORIES +=		x11 devel

HOMEPAGE=		http://pcmanfm.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

MODULES +=		textproc/intltool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# prevent undefined references to libc functions
CONFIGURE_ENV +=	ac_cv_ld_z_defs=no
