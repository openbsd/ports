# $OpenBSD: Makefile,v 1.6 1999/09/13 21:56:52 brad Exp $

DISTNAME=	ORBit-0.4.94
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= ORBit

NEED_VERSION=	1.73

MAINTAINER=	rohee@openbsd.org

LIB_DEPENDS+=	glib.1.2:${PORTSDIR}/devel/glib

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-indent
CONFIGURE_ENV=	GLIB_CONFIG="${LOCALBASE}/bin/glib-config"

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

post-install:
	@if [ -d ${PREFIX}/info -a ! -f ${PREFIX}/info/dir -a -f /usr/share/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

.include <bsd.port.mk>
