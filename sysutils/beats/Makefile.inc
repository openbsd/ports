# $OpenBSD: Makefile.inc,v 1.4 2016/05/09 08:55:45 czarkoff Exp $

PKGNAME ?=		${BEAT}-${VERSION}

CATEGORIES +=		sysutils

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES +=	     	lang/go

ELASTIC_BEAT ?=	     	Yes

MODGO_ENV =		GO15VENDOREXPERIMENT=1 PATH="${PORTPATH}" \
			CFLAGS="${CFLAGS}"

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
	cp ${WRKSRC}/etc/$c ${PREFIX}/share/examples/${BEAT}/
.endfor
