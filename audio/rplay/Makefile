# $OpenBSD: Makefile,v 1.6 1999/04/01 02:57:51 brad Exp $

DISTNAME=       rplay-3.3.0
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://rplay.doit.org/dist/

LIB_DEPENDS=    gsm\\.1\\.0:${PORTSDIR}/audio/gsm

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
SYSCONFDIR=	/etc/rplay
CONFIGURE_ARGS+=--sysconfdir=${SYSCONFDIR}

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
		touch /etc/rplay/rplay.{conf,helpers,servers}; \
	fi

.include <bsd.port.mk>
