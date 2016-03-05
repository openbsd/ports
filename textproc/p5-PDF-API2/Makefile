# $OpenBSD: Makefile,v 1.14 2016/03/05 11:04:22 sthen Exp $

COMMENT =	create PDF documents with perl

MODULES =	cpan

DISTNAME =	PDF-API2-2.026
REVISION =	1
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
