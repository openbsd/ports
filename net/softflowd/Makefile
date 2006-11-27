# $OpenBSD: Makefile,v 1.2 2006/11/27 06:50:35 msf Exp $

COMMENT=	"flow-based network traffic analyser"

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
