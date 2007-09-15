# $OpenBSD: Makefile,v 1.3 2007/09/15 22:36:59 merdely Exp $

COMMENT=	flow-based network traffic analyser

DISTNAME=	softflowd-0.9.8
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www2.mindrot.org/files/softflowd/

WANTLIB=	c pcap

CONFIGURE_STYLE= gnu

NO_REGRESS= Yes

.include <bsd.port.mk>
