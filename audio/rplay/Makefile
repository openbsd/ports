# $OpenBSD: Makefile,v 1.18 2000/10/22 14:02:56 espie Exp $

DISTNAME=	rplay-3.3.0
CATEGORIES=	audio
NEED_VERSION=	1.330
MASTER_SITES=	http://rplay.doit.org/dist/

HOMEPAGE=	http://rplay.doit.org/

LIB_DEPENDS=	gsm.1.0::audio/gsm

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SYSCONFDIR=	/etc/rplay
CONFIGURE_STYLE= gnu dest

post-extract:
	@cd ${WRKSRC}/doc && mv rplay.texi rplayd.texi

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

.include <bsd.port.mk>
