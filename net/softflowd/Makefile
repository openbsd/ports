# $OpenBSD: Makefile,v 1.5 2012/09/04 03:40:34 jeremy Exp $

COMMENT=	flow-based network traffic analyser

DISTNAME=	softflowd-0.9.8
REVISION=	0
CATEGORIES=	net

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
