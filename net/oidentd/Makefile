# $OpenBSD: Makefile,v 1.6 2002/08/20 22:23:00 lebel Exp $

COMMENT=	"ident daemon with custom responses and NAT support"
DISTNAME=	oidentd-2.0.4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:' \
		${PREFIX}/man/man5/oidentd_masq.conf.5 \
		${PREFIX}/man/man5/oidentd.conf.5 \
		${PREFIX}/man/man8/oidentd.8

.include <bsd.port.mk>
