# $OpenBSD: Makefile,v 1.10 2020/04/02 13:11:38 fcambus Exp $

COMMENT =	remotely determine DNS server versions

GH_ACCOUNT =	kirei
GH_PROJECT =	fpdns
GH_TAGNAME =	20190131
DISTNAME =	${GH_PROJECT}-0.10.0.${GH_TAGNAME}

CATEGORIES =	net

HOMEPAGE =	https://code.google.com/p/fpdns/

# BSD
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE = perl

RUN_DEPENDS =	net/p5-Net-DNS

.include <bsd.port.mk>
