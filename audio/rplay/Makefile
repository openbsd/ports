# $OpenBSD: Makefile,v 1.14 2000/04/08 16:39:14 espie Exp $

DISTNAME=       rplay-3.3.0
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	http://rplay.doit.org/dist/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    gsm.1.0::audio/gsm

USE_GMAKE=	Yes
SYSCONFDIR=	/etc/rplay
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS+=--sysconfdir='$${DESTDIR}${SYSCONFDIR}' \
	--prefix='$${DESTDIR}${PREFIX}'
FAKE=		Yes

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

post-build:
	@cd ${WRKSRC}/doc && make info

post-install:
	@if [ ! -d /etc/rplay ]; then \
		echo "Installing default configs..."; \
		mkdir -p /etc/rplay; \
		echo localhost >/etc/rplay/rplay.hosts; \
		touch /etc/rplay/rplay.{conf,helpers,servers}; \
	fi

.include <bsd.port.mk>
