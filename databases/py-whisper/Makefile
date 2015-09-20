# $OpenBSD: Makefile,v 1.4 2015/09/20 20:49:24 benoit Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	0.9.13

DISTNAME=		whisper-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes

RUN_DEPENDS=		net/rrdtool,-python

BIN_FILES=		rrd2whisper.py whisper-create.py whisper-dump.py \
			whisper-fetch.py whisper-info.py whisper-merge.py \
			whisper-resize.py whisper-set-aggregation-method.py \
			whisper-update.py whisper-fill.py

.for b in ${BIN_FILES}
MODPY_ADJ_FILES+=	bin/$b
.endfor

NO_TEST =		Yes

.include <bsd.port.mk>
