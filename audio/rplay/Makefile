# $OpenBSD: Makefile,v 1.11 2000/02/15 05:03:58 turan Exp $

DISTNAME=       rplay-3.3.0
CATEGORIES=	audio
MASTER_SITES=	http://rplay.doit.org/dist/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=    gsm.1.0:${PORTSDIR}/audio/gsm

USE_GMAKE=	yes
SYSCONFDIR=	/etc/rplay
HAS_CONFIGURE=	yes
CONFIGURE_ARGS+= --sysconfdir=${SYSCONFDIR}

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

post-install:
	@if [ ! -d /etc/rplay ]; then \
		echo "Installing default configs..."; \
		mkdir -p /etc/rplay; \
		echo localhost >/etc/rplay/rplay.hosts; \
		touch /etc/rplay/rplay.{conf,helpers,servers}; \
	fi

.include <bsd.port.mk>
