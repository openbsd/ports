# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:58 espie Exp $

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

USE_GROFF =	Yes
NO_REGRESS= Yes

.include <bsd.port.mk>
