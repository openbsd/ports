# $OpenBSD: Makefile.inc,v 1.5 2019/07/13 10:59:27 sthen Exp $

CATEGORIES?=		sysutils

MAINTAINER?=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE?=	Yes

NO_BUILD?=		Yes
NO_TEST?=		Yes
PKG_ARCH?=		*

RUN_DEPENDS+=		sysutils/mcollective>=2.8.2

MCO_SUBDIRS?=		agent aggregate application data util validator
MCO_LIBDIR=		${PREFIX}/libexec/mcollective/mcollective/

do-install:
.for i in ${MCO_SUBDIRS}
	${INSTALL_DATA_DIR} ${MCO_LIBDIR}/$i
	cp -pr ${WRKSRC}/$i/* ${MCO_LIBDIR}/$i
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${MCO_LIBDIR}
