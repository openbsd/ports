# $OpenBSD: Makefile,v 1.26 2005/12/23 15:07:05 espie Exp $

COMMENT=	"network audio player"
DISTNAME=	rplay-3.3.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
SHARED_LIBS=	rplay	0.0

HOMEPAGE=	http://rplay.doit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}/dist/

LIB_DEPENDS=	gsm.1.0::audio/gsm
 
FAKE=		lib
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
MAKE_FLAGS=	LIBrplay_VERSION=${LIBrplay_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS}	DESTDIR=${WRKINST}

post-extract:
	@cd ${WRKSRC}/doc && mv rplay.texi rplayd.texi

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
