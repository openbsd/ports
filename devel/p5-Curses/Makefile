# $OpenBSD: Makefile,v 1.27 2016/03/20 19:56:17 naddy Exp $

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME =	Curses-1.32
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz

CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses form menu panel perl termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
