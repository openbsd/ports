# $OpenBSD: Makefile,v 1.31 2020/07/03 21:44:45 sthen Exp $

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME =	Curses-1.32
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz
FIX_EXTRACT_PERMISSIONS = Yes
REVISION =	1

CATEGORIES=	devel

PERMIT_PACKAGE=	Yes

WANTLIB += c curses form menu panel perl

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
