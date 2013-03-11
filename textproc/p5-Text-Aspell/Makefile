# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:44 espie Exp $

COMMENT=	interface to the GNU aspell library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Text-Aspell-0.09
REVISION=	4
CATEGORIES=	devel textproc
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c stdc++ aspell>=16

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lstdc++" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
