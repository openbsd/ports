# $OpenBSD: Makefile.inc,v 1.1.1.1 2016/04/26 13:08:02 jasper Exp $

PKGNAME ?=		${BEAT}-${VERSION}

CATEGORIES +=		sysutils

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES +=	     	lang/go

ELASTIC_BEAT ?=	     	Yes

.if ${ELASTIC_BEAT:L} == "yes"
HOMEPAGE ?=		https://www.elastic.co/products/beats/${BEAT}

ALL_TARGET =		github.com/elastic/beats/${BEAT}

WRKDIST =		 ${WRKDIR}/${GH_PROJECT}-${VERSION}
MODGO_SUBDIR =		 ${WRKDIST}/${BEAT}

# Redefine ${MODGO_CMD} to include GO15VENDOREXPERIMENT
MODGO_CMD =		unset GOPATH; \
	  		export GO15VENDOREXPERIMENT=1 \
			GOPATH="${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}"; \
			go

pre-build:
	cp -r ${WRKDIST}/{libbeat,vendor} ${WRKSRC}/../
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${BEAT}/
.for c in ${CONFIGS}
	cp ${WRKSRC}/etc/$c ${PREFIX}/share/examples/${BEAT}/
.endfor
