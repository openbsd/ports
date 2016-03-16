# $OpenBSD: Makefile,v 1.16 2016/03/16 00:17:01 sthen Exp $

COMMENT =	create PDF documents with perl

MODULES =	cpan

DISTNAME =	PDF-API2-2.027
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
