# $OpenBSD: Makefile,v 1.7 2014/07/11 16:28:13 rpe Exp $

COMMENT =	remotely determine DNS server versions

GH_ACCOUNT =	kirei
GH_PROJECT =	fpdns
GH_TAGNAME =	20130404
GH_COMMIT =	24a2f18e8b4b41513ebdbdca408769b039810277
DISTNAME =	${GH_PROJECT}-0.10.0.${GH_TAGNAME}

CATEGORIES =	net

HOMEPAGE =	https://code.google.com/p/fpdns/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE = perl

RUN_DEPENDS =	net/p5-Net-DNS

.include <bsd.port.mk>
