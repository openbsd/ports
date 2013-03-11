# $OpenBSD: Makefile,v 1.22 2013/03/11 10:50:15 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	terminal screen handling and optimisation

MODULES=	cpan
DISTNAME=	Curses-1.28
REVISION=	2
CPAN_AUTHOR=	GIRAFFED
EXTRACT_SUFX=	.tgz
USE_GROFF =	Yes

CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses form menu panel termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
