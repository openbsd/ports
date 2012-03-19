# $OpenBSD: Makefile,v 1.17 2012/03/19 11:54:10 sthen Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.715
CATEGORIES=		net www

HOMEPAGE=		http://unix4lyfe.org/darkstat/
MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# GPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_REGRESS=		Yes

.include <bsd.port.mk>
