# $OpenBSD: Makefile,v 1.9 2000/02/15 05:04:00 turan Exp $

DISTNAME=	tosha-0.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

post-install:
	@if [ -e /etc/tosharc ] ; then \
		echo "===> You might wish to update /etc/tosharc"; \
		echo "===> check ${PREFIX}/lib/tosha/tosharc.sample"; \
	else \
		cp ${PREFIX}/lib/tosha/tosharc.sample /etc/tosharc; \
	fi

.include <bsd.port.mk>
