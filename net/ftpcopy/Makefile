# $OpenBSD: Makefile,v 1.3 2001/07/04 16:30:32 pvalchev Exp $

COMMENT=	"FTP listing and transfer tools"

DISTNAME=	ftpcopy-0.3.9
HOMEPAGE=	http://www.ohse.de/uwe/ftpcopy.html

CATEGORIES=	net
NEED_VERSION=	1.419
MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=	http://www.ohse.de/uwe/ftpcopy/ \
		ftp://rt.fm/pub/ftpcopy/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${DESTDIR}/${PREFIX}"

.include <bsd.port.mk>
