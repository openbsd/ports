# $OpenBSD: Makefile,v 1.37 2021/12/09 08:33:26 sthen Exp $

COMMENT =	create PDF documents with perl

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	PDF-API2-2.043

CATEGORIES =	textproc

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-Font-TTF \
		textproc/p5-PDF-API2-XS
TEST_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-Test-Memory-Cycle

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	contrib

pre-patch:
	sed -i 's,^#!.*bin/perl,#!/usr/bin/perl,' ${WRKSRC}/contrib/*

post-install:
	${MODCPAN_POST_INSTALL}
	chmod ${BINMODE} ${MODCPAN_EXAMPLES_DIR}/*

.include <bsd.port.mk>
