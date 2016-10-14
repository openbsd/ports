# $OpenBSD: Makefile,v 1.20 2016/10/14 09:45:30 sthen Exp $

COMMENT =	create PDF documents with perl

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	PDF-API2-2.030
CATEGORIES =	textproc

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-Font-TTF

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	contrib

pre-patch:
	sed -i 's,^#!.*bin/perl,#!/usr/bin/perl,' ${WRKSRC}/contrib/*

post-install:
	${MODCPAN_POST_INSTALL}
	chmod ${BINMODE} ${MODCPAN_EXAMPLES_DIR}/*

.include <bsd.port.mk>
