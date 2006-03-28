# $OpenBSD: Makefile,v 1.9 2006/03/28 15:57:05 jcs Exp $

COMMENT=	"FTP listing and transfer tools"

DISTNAME=	ftpcopy-0.3.9
CATEGORIES=	net
HOMEPAGE=	http://www.ohse.de/uwe/ftpcopy.html

MASTER_SITES=	http://www.ohse.de/uwe/ftpcopy/

PERMIT_PACKAGE_CDROM=	"inscrutable license mix"
PERMIT_PACKAGE_FTP=	"inscrutable license mix"
PERMIT_DISTFILES_CDROM=	"inscrutable license mix"
PERMIT_DISTFILES_FTP=	"inscrutable license mix"
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${DESTDIR}/${PREFIX}"

REGRESS_TARGET=	check

.include <bsd.port.mk>
