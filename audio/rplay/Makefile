# $OpenBSD: Makefile,v 1.8 1999/09/06 18:23:45 brad Exp $

DISTNAME=       rplay-3.3.0
CATEGORIES=	audio
MASTER_SITES=	http://rplay.doit.org/dist/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    gsm.1.0:${PORTSDIR}/audio/gsm

USE_GMAKE=	yes
SYSCONFDIR=	/etc/rplay
HAS_CONFIGURE=	yes
CONFIGURE_ARGS+= --sysconfdir=${SYSCONFDIR}

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		${SED} -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		${MV} ${ff}.tmp ${ff}
.endfor

post-install:
	@if [ ! -d /etc/rplay ]; then \
		${ECHO} "Installing default configs..."; \
		${MKDIR} /etc/rplay; \
		${ECHO} localhost >/etc/rplay/rplay.hosts; \
		${TOUCH} /etc/rplay/rplay.{conf,helpers,servers}; \
	fi

.include <bsd.port.mk>
