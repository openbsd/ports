# $OpenBSD: Makefile,v 1.23 2005/01/13 03:23:09 kevlo Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Tk 8.4 bindings for Perl"
COMMENT-demo=	"demonstrate the features of ptk"

VERSION=	804.027
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

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

MULTI_PACKAGES=	-demo
SUBPACKAGE?=

RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes

CONFIGURE_STYLE= perl

REGRESS_IS_INTERACTIVE=	Yes
MAKE_ENV=	XAUTHORITY=${HOME}/.Xauthority

pre-regress:
.ifndef DISPLAY
	@echo requires access to X; exit 1
.endif

.if empty(SUBPACKAGE)
WANTLIB=		X11 m
.endif

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	::x11/p5-Tk
.endif

.include <bsd.port.mk>
