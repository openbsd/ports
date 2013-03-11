# $OpenBSD: Makefile,v 1.2 2013/03/11 02:52:08 espie Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	0.9.10

DISTNAME=		whisper-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MASTER_SITES=		${MASTER_SITE_PYPI:=w/whisper/}

RUN_DEPENDS=		net/rrdtool,-python

BIN_FILES=		rrd2whisper.py whisper-create.py whisper-dump.py \
			whisper-fetch.py whisper-info.py whisper-merge.py \
			whisper-resize.py whisper-set-aggregation-method.py \
			whisper-update.py

.for b in ${BIN_FILES}
MODPY_ADJ_FILES+=	bin/$b
.endfor

.include <bsd.port.mk>
