# $OpenBSD: Makefile,v 1.10 2006/08/03 20:04:52 espie Exp $

COMMENT=	"browse or page through a text file"

DISTNAME=	most-4.9.5
CATEGORIES=	misc

MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/ \
		http://openbsd.rutgers.edu/

LIB_DEPENDS=	slang.>=14::devel/libslang

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

FAKE=			lib
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m termcap

FAKE_FLAGS=	DESTDIR="${WRKINST}" DOC_DIR='$$(prefix)/share/doc/most'

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=DEPBASE=${DEPBASE}

NO_REGRESS=	Yes

.include <bsd.port.mk>
