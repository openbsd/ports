# $OpenBSD: Makefile,v 1.21 2004/12/17 15:18:34 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Tk 8.0 bindings for Perl"
COMMENT-demo=	"demonstrate the features of ptk"

VERSION=	800.024
DISTNAME=	Tk-${VERSION}
PKGNAME=	p5-Tk-${VERSION}
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel perl5

MAINTAINER=	Shell Hung <shell@openbsd.org>

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 m

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

MULTI_PACKAGES=	-demo
SUBPACKAGE?=

RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes

CONFIGURE_STYLE=perl

WRKDIST=	${WRKDIR}/Tk${VERSION}

REGRESS_IS_INTERACTIVE=	Yes
MAKE_ENV=	XAUTHORITY=${HOME}/.Xauthority

pre-regress:
.ifndef DISPLAY
	@echo requires access to X; exit 1
.endif

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	::x11/p5-Tk
.endif

.include <bsd.port.mk>
