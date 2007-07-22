# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:14:30 simon Exp $

COMMENT=	interface to the GNU aspell library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Text-Aspell-0.08
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	stdc++

LIB_DEPENDS=	aspell.>=16::textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lstdc++" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
