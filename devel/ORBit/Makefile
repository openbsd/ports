# $OpenBSD: Makefile,v 1.18 2000/07/04 01:46:37 krw Exp $

DISTNAME=	ORBit-0.5.0
CATEGORIES=	devel
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/ORBit


LIB_DEPENDS=	intl::devel/gettext \
		glib.1.2::devel/glib

MAINTAINER=	rohee@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static --disable-indent
CONFIGURE_ENV=		GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

# People that installed an older version of ORBit 0.4.x wound up with
# shared libs with a major/minor of 4.0 ... these files
# MUST be removed as the version was incorrect (it came from 1.1.x
# sources). Check that out here (and bitch if necessary).
pre-extract:
	@if [ -f ${LOCALBASE}/lib/libORBit.so.4.0 ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing ORBit installation"; \
	   echo "| before installing this version. To fully remove run"; \
	   echo "| these commands as user root"; \
	   echo "|"; \
	   echo "|      pkg_delete -f `pkg_info -e 'ORBit-*'`"; \
	   echo "|      ldconfig ${LOCALBASE}/lib"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

.include <bsd.port.mk>
