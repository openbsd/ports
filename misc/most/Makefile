# $OpenBSD: Makefile,v 1.1.1.1 2000/09/22 22:05:35 brad Exp $

DISTNAME=	most-4.9.0
CATEGORIES=	misc
NEED_VERSION=	1.330
MASTER_SITES=	ftp://space.mit.edu/pub/davis/most/ \
		http://www.resentment.org/~unix/

LIB_DEPENDS=	slang.14::devel/libslang

MAINTAINER=	unix@resentment.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" DOC_DIR='$$(prefix)/share/doc/most'

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
