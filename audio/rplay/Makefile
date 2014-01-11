# $OpenBSD: Makefile,v 1.35 2014/01/11 11:22:43 espie Exp $

COMMENT=	network audio player
DISTNAME=	rplay-3.3.2
REVISION=	2
CATEGORIES=	audio
SHARED_LIBS=	rplay	0.0

HOMEPAGE=	http://rplay.doit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gsm>=1.0 m

MASTER_SITES=	${HOMEPAGE}/dist/

LIB_DEPENDS=	audio/gsm
 
FAKE=		lib
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
MAKE_FLAGS=	LIBrplay_VERSION=${LIBrplay_VERSION}
USE_GROFF =	Yes

post-extract:
	@cd ${WRKSRC}/doc && mv rplay.texi rplayd.texi

pre-patch:
	chmod -R +w ${WRKSRC}
	find ${WRKSRC} -name '*.[ch]'|xargs fgrep -l malloc.h| \
	while read i; do \
		sed -e 's/malloc.h/stdlib.h/' $$i >$$i.bak && mv $$i.bak $$i; \
	done

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

CONFIG_DIR=${PREFIX}/share/examples/rplay

post-install:
	${INSTALL_DATA_DIR} ${CONFIG_DIR}
	echo localhost >${CONFIG_DIR}/rplay.hosts
	touch ${CONFIG_DIR}/rplay.{conf,helpers,servers}
	chown -R root.wheel ${CONFIG_DIR}
	chmod 644 ${CONFIG_DIR}/*

NO_TEST=	Yes

.include <bsd.port.mk>
