# $OpenBSD: Makefile,v 1.10 2004/12/11 13:29:21 alek Exp $

COMMENT=	"text browser, displays while downloading"

VERSION=	0.99
DISTNAME=	links-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://artax.karlin.mff.cuni.cz/%7Emikulas/links/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

MASTER_SITES=	http://artax.karlin.mff.cuni.cz/%7Emikulas/links/download/ \
		http://links.sourceforge.net/download/

CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
