# OpenBSD makefile for:	rplay - Network audio player   
# Version required:     3.3.0a1
# Date created:		December 4, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/04/10 01:32:02 angelos Exp $
#

DISTNAME=       rplay-3.3.0a1
CATEGORIES=	audio
MASTER_SITES=	http://rplay.doit.org/dist/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    gsm\\.1\\.0:${PORTSDIR}/audio/gsm

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
MAN1=           rplay.1 xrplay.1 rplayd.1 rptp.1
MAN5=		rplay.conf.5 rplay.hosts.5 rplay.servers.5

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
