# $OpenBSD: Makefile,v 1.7 2002/10/27 22:48:26 naddy Exp $

COMMENT=	"FTP listing and transfer tools"

DISTNAME=	ftpcopy-0.3.9
CATEGORIES=	net
HOMEPAGE=	http://www.ohse.de/uwe/ftpcopy.html

MASTER_SITES=	http://www.ohse.de/uwe/ftpcopy/ \
		ftp://rt.fm/pub/ftpcopy/

PERMIT_PACKAGE_CDROM=	"inscrutable license mix"
PERMIT_PACKAGE_FTP=	"inscrutable license mix"
PERMIT_DISTFILES_CDROM=	"inscrutable license mix"
PERMIT_DISTFILES_FTP=	"inscrutable license mix"

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${DESTDIR}/${PREFIX}"

REGRESS_TARGET=	check

.include <bsd.port.mk>
