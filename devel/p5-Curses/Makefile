# $OpenBSD: Makefile,v 1.28 2017/12/02 11:34:17 espie Exp $

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME =	Curses-1.32
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz
FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses form menu panel perl termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
