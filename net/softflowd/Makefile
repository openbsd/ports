# $OpenBSD: Makefile,v 1.1.1.1 2005/04/03 02:22:31 msf Exp $

COMMENT=	"flow-based network traffic analyser"

DISTNAME=	softflowd-0.9.7
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www2.mindrot.org/files/softflowd/

WANTLIB=	c pcap

CONFIGURE_STYLE= gnu dest

NO_REGRESS= Yes

.include <bsd.port.mk>
