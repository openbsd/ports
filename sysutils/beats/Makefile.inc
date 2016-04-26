# $OpenBSD: Makefile.inc,v 1.2 2016/04/26 21:29:43 jasper Exp $

PKGNAME ?=		${BEAT}-${VERSION}

CATEGORIES +=		sysutils

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES +=	     	lang/go

ELASTIC_BEAT ?=	     	Yes

# Redefine ${MODGO_CMD} to include GO15VENDOREXPERIMENT
MODGO_CMD =		unset GOPATH; \
	  		export GO15VENDOREXPERIMENT=1 \
			GOPATH="${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}"; \
			go

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
