# $OpenBSD: Makefile,v 1.1.1.1 2001/03/12 00:07:09 naddy Exp $

DISTNAME=	ftpcopy-0.3.5
CATEGORIES=	net
NEED_VERSION=	1.359

HOMEPAGE=	http://www.ohse.de/uwe/ftpcopy.html

MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.ohse.de/uwe/ftpcopy/ \
		ftp://rt.fm/pub/ftpcopy/

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${DESTDIR}/${PREFIX}"

.include <bsd.port.mk>
