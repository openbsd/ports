# $OpenBSD: Makefile.inc,v 1.6 2017/04/27 09:13:19 jasper Exp $

PKGNAME ?=		${BEAT}-${VERSION}

CATEGORIES +=		sysutils

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES +=	     	lang/go

ELASTIC_BEAT ?=	     	Yes

MODGO_ENV =		PATH="${PORTPATH}" CFLAGS="${CFLAGS}"

.if ${ELASTIC_BEAT:L} == "yes"
HOMEPAGE ?=		https://www.elastic.co/products/beats/${BEAT}

ALL_TARGET =		github.com/elastic/beats/${BEAT}

WRKDIST =		${WRKDIR}/${GH_PROJECT}-${VERSION}
MODGO_SUBDIR =		${WRKDIST}/${BEAT}

pre-build:
	cp -r ${WRKDIST}/{libbeat,vendor} ${WRKSRC}/../
.else
ALL_TARGET ?=		github.com/${GH_ACCOUNT}/${BEAT}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${BEAT}/
.for c in ${CONFIGS}
	cp ${WRKSRC}/$c ${PREFIX}/share/examples/${BEAT}/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/${BEAT}/
	${INSTALL_SCRIPT} ${WRKDIST}/libbeat/scripts/migrate_beat_config_1_x_to_5_0.py \
		${PREFIX}/share/${BEAT}/
