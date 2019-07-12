# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:51:15 sthen Exp $

V=			1.3.1
DISTNAME=		libfm-${V}
EXTRACT_SUFX=		.tar.xz

# quantum entanglement between core and extra
SHARED_LIBS +=  fm                   1.1      # 5.2
SHARED_LIBS +=  fm-gtk               1.1      # 5.2
SHARED_LIBS +=  fm-extra             1.1      # 5.2

CATEGORIES +=		x11 devel

HOMEPAGE=		http://pcmanfm.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

MODULES +=		textproc/intltool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# prevent undefined references to libc functions
CONFIGURE_ENV +=	ac_cv_ld_z_defs=no
