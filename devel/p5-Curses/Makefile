# $OpenBSD: Makefile,v 1.24 2014/06/14 23:24:55 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME=	Curses-1.28
REVISION=	3
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz

CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses form menu panel termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
