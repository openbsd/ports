# $OpenBSD: Makefile,v 1.5 2002/08/04 17:32:28 naddy Exp $

COMMENT=	"ident daemon with custom responses and NAT support"
DISTNAME=	oidentd-2.0.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@pellaeon.com>

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
