# $OpenBSD: Makefile,v 1.8 2000/02/12 06:29:50 turan Exp $

DISTNAME=	tosha-0.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

post-install:
	@if [ -e /etc/tosharc ] ; then \
		echo "===> You might wish to update /etc/tosharc"; \
		echo "===> check ${PREFIX}/lib/tosha/tosharc.sample"; \
	else \
		cp ${PREFIX}/lib/tosha/tosharc.sample /etc/tosharc; \
	fi

.include <bsd.port.mk>
