# $OpenBSD: Makefile,v 1.4 1998/10/06 23:58:33 marc Exp $
#

DISTNAME=       rplay-3.3.0
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://rplay.doit.org/dist/

LIB_DEPENDS=    gsm\\.1\\.0:${PORTSDIR}/audio/gsm

HAS_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	@if [ ! -f ${PREFIX}/etc/rc.d/rplayd.sh ]; then \
		echo "Installing ${PREFIX}/etc/rc.d/rplayd.sh startup file."; \
		echo "#!/bin/sh" > ${PREFIX}/etc/rc.d/rplayd.sh; \
		echo "[ -x /usr/local/sbin/rplayd ] && ( /usr/local/sbin/rplayd & ) && echo -n ' rplayd'" >> ${PREFIX}/etc/rc.d/rplayd.sh; \
		chmod 751 ${PREFIX}/etc/rc.d/rplayd.sh; \
	fi
	@if [ ! -f ${PREFIX}/etc/rplay.hosts ]; then \
		echo localhost > ${PREFIX}/etc/rplay.hosts; \
	fi

.include <bsd.port.mk>
