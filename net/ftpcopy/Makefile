# $OpenBSD: Makefile,v 1.6 2002/07/05 08:44:58 jcs Exp $

COMMENT=	"FTP listing and transfer tools"

DISTNAME=	ftpcopy-0.3.9
HOMEPAGE=	http://www.ohse.de/uwe/ftpcopy.html

CATEGORIES=	net
NEED_VERSION=	1.515

MASTER_SITES=	http://www.ohse.de/uwe/ftpcopy/ \
		ftp://rt.fm/pub/ftpcopy/

PERMIT_PACKAGE_CDROM=	"inscrutable license mix"
PERMIT_PACKAGE_FTP=	"inscrutable license mix"
PERMIT_DISTFILES_CDROM=	"inscrutable license mix"
PERMIT_DISTFILES_FTP=	"inscrutable license mix"

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${DESTDIR}/${PREFIX}"

.include <bsd.port.mk>
