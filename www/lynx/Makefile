# OpenBSD makefile for:    lynx
# http://sol.slcc.edu/lynx/current/
# Version required:     2.7.2
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.8 1998/01/12 17:22:51 gene Exp $
#

DISTNAME=       lynx2-7-2
PKGNAME=        lynx-2.7.2
CATEGORIES=     www
MASTER_SITES=   http://sol.slcc.edu/lynx/release/
EXTRACT_SUFX=   .zip

MAINTAINER=     gene@OpenBSD.ORG

BUILD_DEPENDS=  unzip:$(PORTSDIR)/archivers/unzip

MAN1=           lynx.1
EXTRACT_CMD=    unzip
EXTRACT_BEFORE_ARGS=    -qq
ALL_TARGET=     openbsd

.include <bsd.port.mk>
