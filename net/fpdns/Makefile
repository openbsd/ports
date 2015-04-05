# $OpenBSD: Makefile,v 1.8 2015/04/05 13:31:14 sthen Exp $

COMMENT =	remotely determine DNS server versions

GH_ACCOUNT =	kirei
GH_PROJECT =	fpdns
GH_TAGNAME =	20130404
DISTNAME =	${GH_PROJECT}-0.10.0.${GH_TAGNAME}

CATEGORIES =	net

HOMEPAGE =	https://code.google.com/p/fpdns/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE = perl

RUN_DEPENDS =	net/p5-Net-DNS

.include <bsd.port.mk>
