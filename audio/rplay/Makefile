# $OpenBSD: Makefile,v 1.19 2001/02/06 01:32:04 kevlo Exp $

DISTNAME=	rplay-3.3.2
CATEGORIES=	audio
NEED_VERSION=	1.353

HOMEPAGE=	http://rplay.doit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${HOMEPAGE}/dist/

LIB_DEPENDS=    gsm.1.0::audio/gsm
 
SYSCONFDIR=	/etc/rplay
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/doc && mv rplay.texi rplayd.texi

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

.include <bsd.port.mk>
