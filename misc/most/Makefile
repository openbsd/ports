# $OpenBSD: Makefile,v 1.4 2001/05/06 02:30:19 lebel Exp $

COMMENT=	"browse or page through a text file"

DISTNAME=	most-4.9.0
CATEGORIES=	misc
NEED_VERSION=	1.402
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
