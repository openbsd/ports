# $OpenBSD: Makefile,v 1.3 2001/01/02 15:47:30 naddy Exp $

DISTNAME=	most-4.9.0
CATEGORIES=	misc
NEED_VERSION=	1.330
MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/ \
		http://openbsd.rutgers.edu/

LIB_DEPENDS=	slang.14::devel/libslang

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" DOC_DIR='$$(prefix)/share/doc/most'

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
