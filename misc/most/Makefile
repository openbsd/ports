# $OpenBSD: Makefile,v 1.6 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"browse or page through a text file"

DISTNAME=	most-4.9.2
CATEGORIES=	misc

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
