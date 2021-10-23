# $OpenBSD: Makefile,v 1.2 2021/10/15 17:01:49 denis Exp $

COMMENT =	simple tool for managing encrypted backups in the cloud

MODGO_MODNAME =	github.com/kopia/kopia
MODGO_VERSION =	v0.9.2
MODGO_FLAGS += -tags embedhtml

DISTNAME =	kopia-${MODGO_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://kopia.io/

# Built by running 'gmake html-ui \
#     REACT_APP_FULL_VERSION_INFO="${MODGO_VERSION} on `date`" \
#     REACT_APP_SHORT_VERSION_INFO="${MODGO_VERSION}"' in ${WRKSRC};
# cd htmlui && tar czf kopia-html-ui.${MODGO_VERSION}.tgz build
# !! Requires lang/node !!
DISTFILES = 	kopia-html-ui.${MODGO_VERSION}.tgz:0
MASTER_SITES0 =	https://raw.githubusercontent.com/ledeuns/kopia-html-ui/main/

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache-2.0 License
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

USE_GMAKE =	Yes

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/htmlui -zxf \
	    ${FULLDISTDIR}/kopia-html-ui.${MODGO_VERSION}.tgz

.include "modules.inc"

.include <bsd.port.mk>
