# $OpenBSD: Makefile,v 1.17 2010/05/31 01:58:12 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME=	Curses-1.28
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz

CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		curses form menu panel termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
