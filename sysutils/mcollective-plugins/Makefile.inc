# $OpenBSD: Makefile.inc,v 1.3 2015/06/12 18:01:53 jasper Exp $

CATEGORIES?=		sysutils

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM?=	Yes

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
