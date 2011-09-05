# $OpenBSD: Makefile,v 1.1.1.1 2011/09/05 07:25:12 giovanni Exp $

COMMENT =	remotely determine DNS server versions

DISTNAME =	fpdns-0.9.4
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/fpdns/
MASTER_SITES =	http://bigio.snb.it/openbsd/distfiles/

# BSD
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes 
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE = perl

RUN_DEPENDS =	net/p5-Net-DNS

.include <bsd.port.mk>
