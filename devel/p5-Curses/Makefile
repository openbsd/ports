# $OpenBSD: Makefile,v 1.12 2004/11/24 00:11:03 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"terminal screen handling and optimisation"

DISTNAME=	Curses-1.06
PKGNAME=	p5-${DISTNAME}

CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		curses form menu panel termcap

MAKE_FLAGS=PASTHRU_DEFINE='-idirafter $${PERL_INC}'
CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
